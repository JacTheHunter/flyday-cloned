import 'package:dio/dio.dart';
import 'package:flyday_broker/config/constants/api_endpoints.dart';
import 'package:flyday_broker/features/profile/models/profile.dart';
import 'package:retrofit/retrofit.dart';

import '../../authentication/models/authentication_token.dart';
import '../models/email_check_response.dart';

part 'profile_api_client.g.dart';

@RestApi()
abstract class ProfileApiClient {
  factory ProfileApiClient(Dio dio) = _ProfileApiClient;
  @POST(ApiEndPoints.kApiEndPointAccountCheckEmail)
  Future<EmailCheckResponse> checkEmail(@Field('email') String email);

  @POST(ApiEndPoints.kApiEndPointAccountRegistration)
  @MultiPart()
  Future<AuthenticationToken> createAccount({
    @Part(name: 'email') required String email,
    @Part(name: 'password') required String password,
    @Part(name: 'first_name') required String firstName,
    @Part(name: 'last_name') required String lastName,
    @Part(name: 'company_name') required String companyName,
    @Part(name: 'city') required int cityId,
    @Part(name: 'zip_code') required String zipCode,
    @Part(name: 'website') String? websiteLink,
    @Part(name: 'phone') String? phoneNumber,
    @Part(name: 'messenger') String? messengerLink,
    @Part(name: 'whatsapp') String? whatsapLink,
    @Part(name: 'telegram') String? telegramLink,
    @Part(name: 'logo') String? logoFileInBase64,
  });

  @PUT(ApiEndPoints.kApiEndPointAccount)
  Future<Profile> editAccountProfile({
    @Field('first_name') String? firstName,
    @Field('last_name') String? lastName,
    @Field('company_name') String? companyName,
    @Field('phone') String? phoneNumber,
    @Field('website') String? websiteLink,
    @Field('zip_code') String? zipCode,
    @Field('telegram') String? telegramLink,
    @Field('whatsapp') String? whatsapLink,
    @Field('messenger') String? messengerLink,
    @Field('city') int? cityId,
    @Field('logo') String? logoFileInBase64,
    @Field('language') String? language,
    @Field('currency') int? currencyId,
  });

  @POST(ApiEndPoints.kApiEndPointAccountLogin)
  Future<AuthenticationToken> login({
    @Field('email') required String email,
    @Field('password') required String password,
  });

  @GET(ApiEndPoints.kApiEndPointAccount)
  Future<Profile> getAccountProfile();

  @DELETE(ApiEndPoints.kApiEndPointAccountDelete)
  Future<void> deleteAccountProfile();

  @PUT(ApiEndPoints.kApiEndPointAccountResetPassword)
  Future<void> resetPasswordEmail({
    @Field('email') required String email,
    @Field('new_password') required String password,
    @Field('code') required int code,
  });

  @POST(ApiEndPoints.kApiEndPointAccountResetPasswordSendEmail)
  Future<void> sendResetPasswordEmail({
    @Field('email') required String email,
  });
}
