import 'package:flyday_broker/features/authentication/models/authentication_token.dart';
import 'package:flyday_broker/features/profile/data_sources/profile_api_client.dart';
import 'package:flyday_broker/features/profile/models/profile.dart';

import '../../../common/utils/exceptions.dart';
import 'i_profile_repository.dart';

class ProfileRepository implements IProfileRepository {
  final ProfileApiClient _apiClient;

  ProfileRepository({required ProfileApiClient apiClient}) : _apiClient = apiClient;

  @override
  Future<bool> isEmailAvailable(String email) async {
    try {
      return (await _apiClient.checkEmail(email)).isAvailabe;
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<AuthenticationToken> createAccount({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String companyName,
    required int cityId,
    required String zipCode,
    String? phoneNumber,
    String? websiteLink,
    String? messengerLink,
    String? whatsapLink,
    String? telegramLink,
    String? logoFileInBase64,
  }) async {
    try {
      return await _apiClient.createAccount(
        email: email,
        password: password,
        firstName: firstName,
        lastName: lastName,
        companyName: companyName,
        cityId: cityId,
        zipCode: zipCode,
        phoneNumber: phoneNumber,
        websiteLink: websiteLink,
        whatsapLink: whatsapLink,
        messengerLink: messengerLink,
        telegramLink: telegramLink,
        logoFileInBase64: logoFileInBase64,
      );
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<AuthenticationToken> login({required String email, required String password}) async {
    try {
      return await _apiClient.login(
        email: email,
        password: password,
      );
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<Profile> getAccountProfile() async {
    try {
      return await _apiClient.getAccountProfile();
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<Profile> editAccountProfile({
    String? firstName,
    String? lastName,
    String? companyName,
    String? phoneNumber,
    String? websiteLink,
    String? zipCode,
    String? telegramLink,
    String? whatsapLink,
    String? messengerLink,
    int? cityId,
    String? logoFileInBase64,
    String? language,
    int? currencyId,
  }) async {
    try {
      return await _apiClient.editAccountProfile(
        firstName: firstName,
        lastName: lastName,
        companyName: companyName,
        cityId: cityId,
        zipCode: zipCode,
        phoneNumber: phoneNumber,
        websiteLink: websiteLink,
        whatsapLink: whatsapLink,
        messengerLink: messengerLink,
        telegramLink: telegramLink,
        logoFileInBase64: logoFileInBase64,
        currencyId: currencyId,
        language: language,
      );
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<void> deleteAccountProfile() async {
    try {
      return await _apiClient.deleteAccountProfile();
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<void> sendPasswordRessetEmail({required String email}) async {
    try {
      return await _apiClient.sendResetPasswordEmail(
        email: email,
      );
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<void> resetPassword({required String email, required String password, required int codeFromEmail}) async {
    try {
      return await _apiClient.resetPasswordEmail(
        email: email,
        password: password,
        code: codeFromEmail,
      );
    } catch (e) {
      throw onApiException(e);
    }
  }
}
