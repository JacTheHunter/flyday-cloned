import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../models/authentication_token.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(const AuthenticationState.loading()) {
    on<_Started>(_onStarted);
    on<_UpdateAuthentication>(_onUpdateAuthentication);
    _box = Hive.box('app_settings');
  }

  late final Box _box;

  void _onStarted(_Started event, Emitter<AuthenticationState> emit) {
    final String access = _box.get('token_access', defaultValue: '');
    final String refresh = _box.get('token_refresh', defaultValue: '');
    if (access.isNotEmpty && refresh.isNotEmpty) {
      emit(AuthenticationState.authenticated(AuthenticationToken(access: access, refresh: refresh)));
    } else {
      emit(const AuthenticationState.unAuthenticated());
    }
  }

  void _onUpdateAuthentication(_UpdateAuthentication event, Emitter<AuthenticationState> emit) {
    if (event.token != null) {
      emit(AuthenticationState.authenticated(event.token!));
      _box.put('token_access', event.token?.access);
      _box.put('token_refresh', event.token?.refresh);
    } else {
      _box.put('token_access', '');
      _box.put('token_refresh', '');
      emit(const AuthenticationState.unAuthenticated());
    }
  }
}
