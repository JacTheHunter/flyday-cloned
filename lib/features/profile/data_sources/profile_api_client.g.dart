// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ProfileApiClient implements ProfileApiClient {
  _ProfileApiClient(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<EmailCheckResponse> checkEmail(email) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'email': email};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<EmailCheckResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/account/check-email/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = EmailCheckResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AuthenticationToken> createAccount({
    required email,
    required password,
    required firstName,
    required lastName,
    required companyName,
    required cityId,
    required zipCode,
    websiteLink,
    phoneNumber,
    messengerLink,
    whatsapLink,
    telegramLink,
    logoFileInBase64,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'email',
      email,
    ));
    _data.fields.add(MapEntry(
      'password',
      password,
    ));
    _data.fields.add(MapEntry(
      'first_name',
      firstName,
    ));
    _data.fields.add(MapEntry(
      'last_name',
      lastName,
    ));
    _data.fields.add(MapEntry(
      'company_name',
      companyName,
    ));
    _data.fields.add(MapEntry(
      'city',
      cityId.toString(),
    ));
    _data.fields.add(MapEntry(
      'zip_code',
      zipCode,
    ));
    if (websiteLink != null) {
      _data.fields.add(MapEntry(
        'website',
        websiteLink,
      ));
    }
    if (phoneNumber != null) {
      _data.fields.add(MapEntry(
        'phone',
        phoneNumber,
      ));
    }
    if (messengerLink != null) {
      _data.fields.add(MapEntry(
        'messenger',
        messengerLink,
      ));
    }
    if (whatsapLink != null) {
      _data.fields.add(MapEntry(
        'whatsapp',
        whatsapLink,
      ));
    }
    if (telegramLink != null) {
      _data.fields.add(MapEntry(
        'telegram',
        telegramLink,
      ));
    }
    if (logoFileInBase64 != null) {
      _data.fields.add(MapEntry(
        'logo',
        logoFileInBase64,
      ));
    }
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AuthenticationToken>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: null,
    )
            .compose(
              _dio.options,
              '/account/registration/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AuthenticationToken.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Profile> editAccountProfile({
    firstName,
    lastName,
    companyName,
    phoneNumber,
    websiteLink,
    zipCode,
    telegramLink,
    whatsapLink,
    messengerLink,
    cityId,
    logoFileInBase64,
    language,
    currencyId,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = {
      'first_name': firstName,
      'last_name': lastName,
      'company_name': companyName,
      'phone': phoneNumber,
      'website': websiteLink,
      'zip_code': zipCode,
      'telegram': telegramLink,
      'whatsapp': whatsapLink,
      'messenger': messengerLink,
      'city': cityId,
      'logo': logoFileInBase64,
      'language': language,
      'currency': currencyId,
    };
    _data.removeWhere((k, v) => v == null);
    final _result =
        await _dio.fetch<Map<String, dynamic>>(_setStreamType<Profile>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/account/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Profile.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AuthenticationToken> login({
    required email,
    required password,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'email': email,
      'password': password,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AuthenticationToken>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/account/login/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AuthenticationToken.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Profile> getAccountProfile() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result =
        await _dio.fetch<Map<String, dynamic>>(_setStreamType<Profile>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/account/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Profile.fromJson(_result.data!);
    return value;
  }

  @override
  Future<void> deleteAccountProfile() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    await _dio.fetch<void>(_setStreamType<void>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/account/delete/',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  @override
  Future<void> resetPasswordEmail({
    required email,
    required password,
    required code,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'email': email,
      'new_password': password,
      'code': code,
    };
    await _dio.fetch<void>(_setStreamType<void>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/account/reset-password/',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  @override
  Future<void> sendResetPasswordEmail({required email}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'email': email};
    await _dio.fetch<void>(_setStreamType<void>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/account/reset-password/send-email/',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
