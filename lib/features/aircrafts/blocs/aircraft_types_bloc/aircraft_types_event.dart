part of 'aircraft_types_bloc.dart';

@freezed
class AircraftTypesEvent with _$AircraftTypesEvent {
  const factory AircraftTypesEvent.fetch([bool? more]) = _Fetch;
}
