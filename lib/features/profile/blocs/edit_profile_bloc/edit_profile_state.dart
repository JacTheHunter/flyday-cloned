part of 'edit_profile_bloc.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const EditProfileState._();
  const factory EditProfileState({
    @Default(StateStatus()) StateStatus status,
    required FormModel companyName,
    required FormModelCustom<Country> country,
    required FormModelCustom<City> city,
    required FormModel zipCode,
    String? logoFilePath,
    required FormModel firstName,
    required FormModel lastName,
    required FormModel websiteAddress,
    required FormModel phoneNumber,
    required FormModel telegramLink,
    required FormModel whatsappLink,
    required FormModel messengerLink,
    @Default(false) hasChanges,
  }) = _EditProfileState;
}
