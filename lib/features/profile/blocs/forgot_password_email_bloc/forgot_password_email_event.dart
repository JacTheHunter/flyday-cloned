part of 'forgot_password_email_bloc.dart';

@freezed
class ForgotPasswordEmailEvent with _$ForgotPasswordEmailEvent {
  const factory ForgotPasswordEmailEvent.setEmail(String value) = _SetEmail;
  const factory ForgotPasswordEmailEvent.send() = _Send;
}
