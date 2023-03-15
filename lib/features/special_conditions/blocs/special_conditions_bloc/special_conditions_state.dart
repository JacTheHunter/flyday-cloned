part of 'special_conditions_bloc.dart';

@freezed
class SpecialConditionsState with _$SpecialConditionsState {
  const factory SpecialConditionsState({
    @Default(StateStatus()) StateStatus status,
    @Default([]) List<SpecialCondition> specialConditions,
  }) = _SpecialConditionsState;
}
