part of 'forgot_password_reset_bloc.dart';

@freezed
class ForgotPasswordResetState with _$ForgotPasswordResetState {
  const ForgotPasswordResetState._();
  const factory ForgotPasswordResetState({
    @Default(StateStatus()) StateStatus status,
    @Default(FormModel(name: 'Email', isRequired: true, isEmail: true, maxLength: 255)) FormModel email,
    @Default(false) isEmailAvailable,
    @Default(FormModel(name: 'Password', isRequired: true, minLength: 6, maxLength: 255)) FormModel password,
    @Default(FormModel(name: 'Confirm password', isRequired: true, minLength: 6, maxLength: 255))
        FormModel confirmPassword,
    @Default(FormModel(name: 'Code', isRequired: true, minLength: 1, maxLength: 6)) FormModel code,
  }) = _ForgotPasswordResetState;

  String? get confirmPasswordErrorText =>
      confirmPassword.errorText ??
      ((confirmPassword.isDirty && !areTwoStringsEqual(password.value, confirmPassword.value)
          ? 'password_not_equal'.tr()
          : null));
}
