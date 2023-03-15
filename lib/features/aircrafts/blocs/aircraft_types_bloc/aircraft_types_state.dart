part of 'aircraft_types_bloc.dart';

@freezed
class AircraftTypesState with _$AircraftTypesState {
  const factory AircraftTypesState({
    @Default(StateStatus()) StateStatus status,
    @Default([]) List<AircraftType> aircraftTypes,
  }) = _AircraftTypesState;
}
