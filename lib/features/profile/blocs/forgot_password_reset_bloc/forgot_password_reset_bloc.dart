import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/models/form_model.dart';
import '../../../../common/models/state_status.dart';
import '../../../../common/utils/exceptions.dart';
import '../../../../common/utils/validation.dart';
import '../../repositories/i_profile_repository.dart';

part 'forgot_password_reset_event.dart';
part 'forgot_password_reset_state.dart';
part 'forgot_password_reset_bloc.freezed.dart';

class ForgotPasswordResetBloc extends Bloc<ForgotPasswordResetEvent, ForgotPasswordResetState> {
  final IProfileRepository _repository;
  final String? email;
  ForgotPasswordResetBloc({
    required IProfileRepository repository,
    this.email,
  })  : _repository = repository,
        super(ForgotPasswordResetState(
            email: FormModel(value: email ?? '', name: 'Email', isRequired: true, isEmail: true, maxLength: 255))) {
    on<_SetCode>(_onSetCode);
    on<_SetEmail>(_onSetEmail);
    on<_SetPassword>(_onSetPassword);
    on<_SetConfirmPassword>(_onSetConfirmPassword);
    on<_Submit>(_onSubmit);
  }

  void _onSetCode(_SetCode event, Emitter<ForgotPasswordResetState> emit) async {
    emit(state.copyWith(code: state.code.setValue(event.value), status: const StateStatus()));
  }

  void _onSetEmail(_SetEmail event, Emitter<ForgotPasswordResetState> emit) async {
    emit(state.copyWith(email: state.email.setValue(event.value), status: const StateStatus()));
  }

  void _onSetPassword(_SetPassword event, Emitter<ForgotPasswordResetState> emit) {
    emit(state.copyWith(password: state.password.setValue(event.value), status: const StateStatus()));
  }

  void _onSetConfirmPassword(_SetConfirmPassword event, Emitter<ForgotPasswordResetState> emit) {
    emit(state.copyWith(confirmPassword: state.confirmPassword.setValue(event.value), status: const StateStatus()));
  }

  void _onSubmit(_Submit event, Emitter<ForgotPasswordResetState> emit) async {
    emit(state.copyWith(
      email: state.email.validate(),
      code: state.code.validate(),
      password: state.password.validate(),
      confirmPassword: state.confirmPassword.validate(),
      status: const StateStatus(),
    ));

    if (state.email.isValid &&
        state.code.isValid &&
        state.password.isValid &&
        state.confirmPassword.isValid &&
        state.confirmPasswordErrorText == null) {
      emit(state.copyWith(status: const StateStatus.loading()));

      try {
        await _repository.resetPassword(
          email: state.email.value,
          password: state.password.value,
          codeFromEmail: int.parse(state.code.value),
        );
        emit(state.copyWith(status: const SuccessStatus()));
      } catch (e) {
        emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
      }
    }
  }
}
