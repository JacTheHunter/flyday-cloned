part of 'aircrafts_local_bloc.dart';

@freezed
class AircraftsLocalEvent with _$AircraftsLocalEvent {
  const factory AircraftsLocalEvent.fetch([bool? more]) = _Fetch;
  const factory AircraftsLocalEvent.setSearchPhrase(String value) = _SetSearchPhrase;
  const factory AircraftsLocalEvent.delete(int id) = _Delete;
}
