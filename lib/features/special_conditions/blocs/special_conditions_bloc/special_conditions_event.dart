part of 'special_conditions_bloc.dart';

@freezed
class SpecialConditionsEvent with _$SpecialConditionsEvent {
  const factory SpecialConditionsEvent.fetch([bool? more]) = _Fetch;
}
