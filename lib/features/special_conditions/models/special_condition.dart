import 'package:freezed_annotation/freezed_annotation.dart';

part 'special_condition.freezed.dart';
part 'special_condition.g.dart';

@freezed
class SpecialCondition with _$SpecialCondition {
  factory SpecialCondition({
    required int id,
    required String name,
    required String icon,
  }) = _SpecialCondition;

  factory SpecialCondition.fromJson(Map<String, dynamic> json) => _$SpecialConditionFromJson(json);
}
