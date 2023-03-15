import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';
import 'package:flyday_broker/features/authentication/blocs/bloc/authentication_bloc.dart';
import 'package:flyday_broker/features/authentication/models/authentication_token.dart';

import '../../config/constants/api_endpoints.dart';
import 'connectivity_service.dart';

class ApiService {
  late final Dio _dio;
  final ConnectivityService _connectivityService;
  final AuthenticationBloc _authenticationBloc;

  // final LogInterceptor _logInterceptor = LogInterceptor(
  //     requestBody: true, error: true, request: true, requestHeader: true, responseBody: true, responseHeader: true);

  ApiService({
    required ConnectivityService connectivityService,
    required AuthenticationBloc authenticationBloc,
  })  : _connectivityService = connectivityService,
        _authenticationBloc = authenticationBloc {
    final BaseOptions baseOptions = BaseOptions(
      connectTimeout: 60 * 1000, // 60 seconds
      receiveTimeout: 60 * 1000,
      baseUrl: ApiEndPoints.kApiEndPointBase,
      maxRedirects: 2,
    );
    _dio = Dio(baseOptions);
    if (_dio.httpClientAdapter is DefaultHttpClientAdapter) {
      (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (HttpClient client) {
        client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
        return client;
      };
    }
    // _dio.interceptors.add(_logInterceptor);
    _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      final String jwt =
          _authenticationBloc.state is Authenticated ? (_authenticationBloc.state as Authenticated).token.access : '';
      if (jwt.isNotEmpty) options.headers['Authorization'] = 'jwt $jwt';
      handler.next(options);
    }, onError: (err, handler) async {
      if (err.type != DioErrorType.cancel && err.type != DioErrorType.response) {
        if (!await _connectivityService.hasConnection) {
          handler.next(DioError(requestOptions: err.requestOptions, error: 'no_connection'));
          return;
        }
      }

      if (err.response?.data is Map &&
          err.response?.data?['code'] is String &&
          err.response?.data?['code'] == 'token_not_valid') {
        // ignore: deprecated_member_use
        _dio.lock();
        final Dio newDio = Dio(baseOptions);

        try {
          final result = await newDio.post(ApiEndPoints.kApiEndPointTokenRefresh, data: {
            'refresh': _authenticationBloc.state is Authenticated
                ? (_authenticationBloc.state as Authenticated).token.refresh
                : ''
          });
          final newToken = AuthenticationToken.fromJson(result.data);
          _authenticationBloc.add(AuthenticationEvent.updateAuthenticationToken(token: newToken));
          err.requestOptions.headers['Authorization'] = 'jwt ${newToken.access}';
          final opts = Options(method: err.requestOptions.method, headers: err.requestOptions.headers);
          final cloneReq = await newDio.request(err.requestOptions.path,
              options: opts, data: err.requestOptions.data, queryParameters: err.requestOptions.queryParameters);
          // ignore: deprecated_member_use
          _dio.unlock();
          return handler.resolve(cloneReq);
        } catch (e) {
          if (e is DioError) {
            if (e.response?.data is Map &&
                e.response?.data?['code'] != null &&
                e.response?.data?['code'] == 'token_not_valid') {
              // ignore: deprecated_member_use
              _dio.clear();
              _authenticationBloc.add(const AuthenticationEvent.updateAuthenticationToken());
            }
            // ignore: deprecated_member_use
            _dio.unlock();
            return handler.reject(e);
          }
          // ignore: deprecated_member_use
          _dio.unlock();
          return handler.reject(err);
        }
      }
      // ignore: deprecated_member_use
      _dio.unlock();

      return handler.next(err);
    }));
  }

  Dio get dio => _dio;

  // // for HTTP.GET Request.
  // Future<Response> get(String url, {Map<String, dynamic>? params}) async {
  //   Response response;
  //   try {
  //     response = await _dio.get(
  //       url,
  //       queryParameters: params,
  //     );
  //   } catch (e) {
  //     rethrow;
  //   }
  //   return response;
  // }

  // // for HTTP.POST Request.
  // Future<Response> post(String url, {dynamic data, Map<String, dynamic>? params}) async {
  //   Response response;

  //   try {
  //     response = await _dio.post(
  //       url,
  //       data: data,
  //       queryParameters: params,
  //     );
  //   } catch (e) {
  //     rethrow;
  //   }
  //   return response;
  // }

  // // for HTTP.PUT Request.
  // Future<Response> put(String url, {dynamic data}) async {
  //   Response response;

  //   try {
  //     response = await _dio.put(
  //       url,
  //       data: data,
  //     );
  //   } catch (e) {
  //     rethrow;
  //   }
  //   return response;
  // }

  // // for HTTP.PATCH Request.
  // Future<Response> patch(String url, {Map<String, String>? params}) async {
  //   Response response;

  //   try {
  //     response = await _dio.patch(
  //       url,
  //       data: params,
  //     );
  //   } catch (e) {
  //     rethrow;
  //   }
  //   return response;
  // }

  // // for HTTP.DELETE Request.
  // Future<Response> delete(String url, {Map<String, String>? params}) async {
  //   Response response;
  //   try {
  //     response = await _dio.delete(
  //       url,
  //       data: params,
  //     );
  //   } catch (e) {
  //     rethrow;
  //   }
  //   return response;
  // }
}
