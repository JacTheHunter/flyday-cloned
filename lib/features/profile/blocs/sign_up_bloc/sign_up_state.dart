part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const SignUpState._();
  factory SignUpState({
    @Default(StateStatus()) StateStatus status,
    @Default(FormModel(name: 'Email', isRequired: true, isEmail: true, maxLength: 255)) FormModel email,
    @Default(false) isEmailAvailable,
    @Default(FormModel(name: 'Password', isRequired: true, minLength: 6, maxLength: 255)) FormModel password,
    @Default(FormModel(name: 'Confirm password', isRequired: true, minLength: 6, maxLength: 255))
        FormModel confirmPassword,
    @Default(FormModel(name: 'Company name', isRequired: true, maxLength: 255)) FormModel companyName,
    @Default(FormModelCustom<Country>(name: 'Country', isRequired: true)) FormModelCustom<Country> country,
    @Default(FormModelCustom<City>(name: 'City', isRequired: true)) FormModelCustom<City> city,
    @Default(FormModel(name: 'Zip', isRequired: true, minLength: 5, maxLength: 10)) FormModel zipCode,
    String? logoFilePath,
    @Default(FormModel(name: 'First name', isRequired: true, maxLength: 255)) FormModel firstName,
    @Default(FormModel(name: 'Last name', isRequired: true, maxLength: 255)) FormModel lastName,
    @Default(FormModel(name: 'Website address', maxLength: 255)) FormModel websiteAddress,
    @Default(FormModel(name: 'Phone number', isPhone: true)) FormModel phoneNumber,
    @Default(FormModel(name: 'Telegram link', maxLength: 400)) FormModel telegramLink,
    @Default(FormModel(name: 'WhatsApp link', maxLength: 400)) FormModel whatsappLink,
    @Default(FormModel(name: 'Messenger link', maxLength: 400)) FormModel messengerLink,
    required FormModelCustom<bool> termsAndConditions,
    required FormModelCustom<bool> privacyPolicy,
    @Default(0) int step,
  }) = _SignUpState;

  String? get confirmPasswordErrorText =>
      confirmPassword.errorText ??
      ((confirmPassword.isDirty && !areTwoStringsEqual(password.value, confirmPassword.value)
          ? 'password_not_equal'.tr()
          : null));

  String? get emailErrorText =>
      email.errorText ?? ((email.isDirty && !isEmailAvailable ? 'email_address_already_registered'.tr() : null));

  bool checkBool(bool? value) => true;
}
