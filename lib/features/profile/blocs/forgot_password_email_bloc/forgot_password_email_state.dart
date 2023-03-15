part of 'forgot_password_email_bloc.dart';

@freezed
class ForgotPasswordEmailState with _$ForgotPasswordEmailState {
  const factory ForgotPasswordEmailState({
    @Default(StateStatus()) StateStatus status,
    @Default(FormModel(name: 'Email', isRequired: true, isEmail: true, maxLength: 255)) FormModel email,
  }) = _ForgotPasswordEmailState;
}
