part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.get() = _Get;
  const factory ProfileEvent.updateProfile(Profile profile) = _UpdateProfile;
  const factory ProfileEvent.deleteProfile() = _DeleteProfile;
}
