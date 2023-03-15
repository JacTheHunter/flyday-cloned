part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.authenticated(AuthenticationToken token) = Authenticated;
  const factory AuthenticationState.unAuthenticated() = UnAuthenticated;
  const factory AuthenticationState.loading() = Loading;
}
