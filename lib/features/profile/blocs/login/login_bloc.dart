import 'package:bloc/bloc.dart';
import 'package:flyday_broker/common/services/notifications/notifications_service.dart';
import 'package:flyday_broker/features/authentication/blocs/bloc/authentication_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/models/form_model.dart';
import '../../../../common/models/state_status.dart';
import '../../../../common/utils/exceptions.dart';
import '../../repositories/i_profile_repository.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IProfileRepository _repository;
  final AuthenticationBloc _authenticationBloc;
  final NotificationsService _notificationsService;
  LoginBloc(
      {required IProfileRepository repository,
      required AuthenticationBloc authenticationBloc,
      required NotificationsService notificationsService})
      : _repository = repository,
        _authenticationBloc = authenticationBloc,
        _notificationsService = notificationsService,
        super(const LoginState()) {
    on<_UpdateEmail>(_onUpdateEmail);
    on<_UpdatePassword>(_onUpdatePassword);
    on<_UpdateRememberMe>(_onUpdateRememberMe);
    on<_Submit>(_onSubmit);
  }

  void _onUpdateEmail(_UpdateEmail event, Emitter<LoginState> emit) {
    emit(state.copyWith(email: state.email.setValue(event.value), status: const StateStatus()));
  }

  void _onUpdatePassword(_UpdatePassword event, Emitter<LoginState> emit) {
    emit(state.copyWith(password: state.password.setValue(event.value), status: const StateStatus()));
  }

  void _onUpdateRememberMe(_UpdateRememberMe event, Emitter<LoginState> emit) {
    emit(state.copyWith(rememberMe: event.value, status: const StateStatus()));
  }

  Future<void> _onSubmit(_Submit event, Emitter<LoginState> emit) async {
    emit(
      state.copyWith(
        email: state.email.validate(),
        password: state.password.validate(),
      ),
    );
    if (state.email.isValid && state.password.isValid) {
      emit(state.copyWith(status: const StateStatus.loading()));
      try {
        final token = await _repository.login(email: state.email.value, password: state.password.value);
        emit(state.copyWith(status: const StateStatus.success()));
        _authenticationBloc.add(AuthenticationEvent.updateAuthenticationToken(token: token));
        _notificationsService.setFcm();
      } catch (e) {
        emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
      }
    }
  }
}
