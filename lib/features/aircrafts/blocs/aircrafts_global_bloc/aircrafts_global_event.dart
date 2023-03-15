part of 'aircrafts_global_bloc.dart';

@freezed
class AircraftsGlobalEvent with _$AircraftsGlobalEvent {
  const factory AircraftsGlobalEvent.get() = _Get;
  const factory AircraftsGlobalEvent.setSearchPhrase(String value) = _SetSearchPhrase;
}
