import 'package:bloc/bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/features/authentication/blocs/bloc/authentication_bloc.dart';
import 'package:flyday_broker/features/profile/models/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/utils/exceptions.dart';
import '../../repositories/i_profile_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IProfileRepository _repository;
  final AuthenticationBloc _authenticationBloc;

  ProfileBloc({
    required IProfileRepository repository,
    required AuthenticationBloc authenticationBloc,
  })  : _repository = repository,
        _authenticationBloc = authenticationBloc,
        super(const ProfileState()) {
    on<_Get>(_onGet);
    on<_UpdateProfile>(_onUpdateProfile);
    on<_DeleteProfile>(_onDeleteProfile);
  }

  void _onGet(_Get event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(status: const LoadingStatus()));
    try {
      final profile = await _repository.getAccountProfile();
      emit(state.copyWith(profile: profile, status: const StateStatus()));
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }

  void _onUpdateProfile(_UpdateProfile event, Emitter<ProfileState> emit) {
    emit(state.copyWith(profile: event.profile));
  }

  void _onDeleteProfile(_DeleteProfile event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(status: const LoadingStatus()));
    try {
      await _repository.deleteAccountProfile();
      _authenticationBloc.add(const AuthenticationEvent.updateAuthenticationToken());
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }
}
