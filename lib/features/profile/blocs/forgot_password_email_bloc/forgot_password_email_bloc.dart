import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/models/form_model.dart';
import '../../../../common/models/state_status.dart';
import '../../../../common/utils/exceptions.dart';
import '../../repositories/i_profile_repository.dart';

part 'forgot_password_email_event.dart';
part 'forgot_password_email_state.dart';
part 'forgot_password_email_bloc.freezed.dart';

class ForgotPasswordEmailBloc extends Bloc<ForgotPasswordEmailEvent, ForgotPasswordEmailState> {
  final IProfileRepository _repository;

  ForgotPasswordEmailBloc({
    required IProfileRepository repository,
  })  : _repository = repository,
        super(const ForgotPasswordEmailState()) {
    on<_SetEmail>(_onSetEmail);
    on<_Send>(_onSend);
  }

  void _onSetEmail(_SetEmail event, Emitter<ForgotPasswordEmailState> emit) {
    emit(state.copyWith(email: state.email.setValue(event.value), status: const StateStatus()));
  }

  void _onSend(_Send event, Emitter<ForgotPasswordEmailState> emit) async {
    emit(state.copyWith(
      email: state.email.validate(),
      status: const StateStatus(),
    ));
    if (state.email.isValid) {
      emit(state.copyWith(status: const StateStatus.loading()));
      try {
        await _repository.sendPasswordRessetEmail(email: state.email.value);
        emit(state.copyWith(status: const SuccessStatus()));
      } catch (e) {
        emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
      }
    }
  }
}
