// import 'package:flyday_broker/features/authentication/models/authentication_token.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'user_with_authentication_token.freezed.dart';
// part 'user_with_authentication_token.g.dart';

// @freezed
// class UserWithAuthenticationToken with _$UserWithAuthenticationToken {
//   factory UserWithAuthenticationToken({
//     required int id,
//     @JsonKey(name: 'city') required int cityId,
//     required String zipCode,
//     @JsonKey(name: 'company_name') required String companyName,
//     @JsonKey(name: 'last_name') required String firstName,
//     @JsonKey(name: 'first_name') required String lastName,
//     @JsonKey(name: 'website') String? websiteLink,
//     @JsonKey(name: 'messenger') String? messengerLink,
//     @JsonKey(name: 'whatsapp') String? whatsapLink,
//     @JsonKey(name: 'telegram') String? telegramLink,
//     @JsonKey(name: 'logo') String? logoPath,
//     @JsonKey(name: 'jwt_token') AuthenticationToken? authenticationToken,
//   }) = _UserWithAuthenticationToken;

//   factory UserWithAuthenticationToken.fromJson(Map<String, dynamic> json) =>
//       _$UserWithAuthenticationTokenFromJson(json);
// }
