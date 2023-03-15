import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_token.freezed.dart';
part 'authentication_token.g.dart';

@freezed
class AuthenticationToken with _$AuthenticationToken {
  factory AuthenticationToken({
    required String access,
    required String refresh,
  }) = _AuthenticationToken;

  factory AuthenticationToken.fromJson(Map<String, dynamic> json) => _$AuthenticationTokenFromJson(json);
}
