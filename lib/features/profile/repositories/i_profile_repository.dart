import 'package:flyday_broker/features/authentication/models/authentication_token.dart';
import 'package:flyday_broker/features/profile/models/profile.dart';

abstract class IProfileRepository {
  Future<bool> isEmailAvailable(String email);
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
  });
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
  });
  Future<AuthenticationToken> login({
    required String email,
    required String password,
  });

  Future<Profile> getAccountProfile();

  Future<void> deleteAccountProfile();

  Future<void> sendPasswordRessetEmail({
    required String email,
  });

  Future<void> resetPassword({
    required String email,
    required String password,
    required int codeFromEmail,
  });
}
