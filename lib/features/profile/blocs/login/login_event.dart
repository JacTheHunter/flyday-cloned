part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.updateEmail(String value) = _UpdateEmail;
  const factory LoginEvent.updatePassword(String value) = _UpdatePassword;
  const factory LoginEvent.updateRememberMe(bool value) = _UpdateRememberMe;
  const factory LoginEvent.submit() = _Submit;
}
