part of 'aircrafts_global_bloc.dart';

@freezed
class AircraftsGlobalState with _$AircraftsGlobalState {
  const factory AircraftsGlobalState({
    @Default(StateStatus()) StateStatus status,
    AircraftInfo? globalAircraft,
    @Default('') String searchPhrase,
  }) = _AircraftsGlobalState;
}
