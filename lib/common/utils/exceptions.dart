import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

import '../models/error_status_message.dart';
import 'repository_exception.dart';

ErrorStatusMessage onRepositoryException(dynamic e) {
  if (e is RepositoryException) {
    return ErrorStatusMessage(text: e.message, showPopUp: e.showPopUp);
  }
  return ErrorStatusMessage(text: e.toString());
}

RepositoryException onApiException(dynamic e) {
  if (e is DioError) {
    if (e.response?.data is Map && e.response?.data?['detail'] != null) {
      return RepositoryException(
        message: e.response?.data?['detail']?.toString() ?? e.response.toString(),
        showPopUp: e.response?.data?['code'] != 'token_not_valid',
      );
    } else if (e.response?.statusCode != null) {
      return RepositoryException(
        message: '${("network_error").tr()} (${e.response?.statusCode})',
        showPopUp: true,
      );
    }
    return RepositoryException(message: e.message);
  }
  return RepositoryException(message: e.toString());
}

bool isExceptionWith404(dynamic e) {
  return (e is DioError && e.response?.statusCode == 404);
}
