part of 'forgot_password_reset_bloc.dart';

@freezed
class ForgotPasswordResetEvent with _$ForgotPasswordResetEvent {
  const factory ForgotPasswordResetEvent.setEmail(String value) = _SetEmail;
  const factory ForgotPasswordResetEvent.setCode(String value) = _SetCode;
  const factory ForgotPasswordResetEvent.setPassword(String value) = _SetPassword;
  const factory ForgotPasswordResetEvent.setConfirmPassword(String value) = _SetConfirmPassword;
  const factory ForgotPasswordResetEvent.submit() = _Submit;
}
