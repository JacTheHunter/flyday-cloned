part of 'edit_profile_bloc.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.updateCompanyName(String value) = _UpdateCompanyName;
  const factory EditProfileEvent.updateCountry(Country value) = _UpdateCountry;
  const factory EditProfileEvent.updateCity(City value) = _UpdateCity;
  const factory EditProfileEvent.updateZip(String value) = _UpdateZip;
  const factory EditProfileEvent.updateFirstName(String value) = _UpdateFirstName;
  const factory EditProfileEvent.updateLastName(String value) = _UpdateLastName;
  const factory EditProfileEvent.updateWebsiteAddress(String value) = _UpdateWebsiteAddress;
  const factory EditProfileEvent.updatePhoneNumber(String value) = _UpdatePhoneNumber;
  const factory EditProfileEvent.updateTelegramLink(String value) = _UpdateTelegramLink;
  const factory EditProfileEvent.updateWhatsAppLink(String value) = _UpdateWhatsAppLink;
  const factory EditProfileEvent.updateMessengerLink(String value) = _UpdateMessengerLink;
  const factory EditProfileEvent.updateLogoFile(String? value) = _UpdateLogoFilePath;
  const factory EditProfileEvent.updateCurrency(Currency value) = _UpdateCurrency;
  const factory EditProfileEvent.updateLanguage(Language value) = _UpdateLanguage;
  const factory EditProfileEvent.save() = _Save;
}
