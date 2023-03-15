part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.updateEmail(String value) = _UpdateEmail;
  const factory SignUpEvent.updatePassword(String value) = _UpdatePassword;
  const factory SignUpEvent.updateConfirmPassword(String value) = _UpdateConfirmPassword;
  const factory SignUpEvent.updateCompanyName(String value) = _UpdateCompanyName;
  const factory SignUpEvent.updateCountry(Country value) = _UpdateCountry;
  const factory SignUpEvent.updateCity(City value) = _UpdateCity;
  const factory SignUpEvent.updateZip(String value) = _UpdateZip;
  const factory SignUpEvent.updateFirstName(String value) = _UpdateFirstName;
  const factory SignUpEvent.updateLastName(String value) = _UpdateLastName;
  const factory SignUpEvent.updateWebsiteAddress(String value) = _UpdateWebsiteAddress;
  const factory SignUpEvent.updatePhoneNumber(String value) = _UpdatePhoneNumber;
  const factory SignUpEvent.updateTelegramLink(String value) = _UpdateTelegramLink;
  const factory SignUpEvent.updateWhatsAppLink(String value) = _UpdateWhatsAppLink;
  const factory SignUpEvent.updateMessengerLink(String value) = _UpdateMessengerLink;
  const factory SignUpEvent.updateLogoFile(String? value) = _UpdateLogoFilePath;
  const factory SignUpEvent.updateTermsAndConditions(bool value) = _UpdateTermsAndConditions;
  const factory SignUpEvent.updatePrivacyPolice(bool value) = _UpdatePrivacyPolice;
  const factory SignUpEvent.next() = _Next;
  const factory SignUpEvent.back() = _Back;
}
