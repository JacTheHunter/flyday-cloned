part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(StateStatus()) StateStatus status,
    @Default(FormModel(name: 'Email', isRequired: true, isEmail: true, maxLength: 255)) FormModel email,
    @Default(FormModel(name: 'Password', isRequired: true, minLength: 6, maxLength: 255)) FormModel password,
    @Default(false) bool rememberMe,
  }) = _LoginState;
}
