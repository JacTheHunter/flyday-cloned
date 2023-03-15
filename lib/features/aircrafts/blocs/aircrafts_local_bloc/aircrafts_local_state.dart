part of 'aircrafts_local_bloc.dart';

@freezed
class AircraftsLocalState with _$AircraftsLocalState {
  const factory AircraftsLocalState({
    @Default(StateStatus()) StateStatus status,
    @Default([]) List<AircraftInfo> localAircrafts,
    @Default('') String searchPhrase,
  }) = _AircraftsLocalState;
}
