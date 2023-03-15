import 'package:freezed_annotation/freezed_annotation.dart';

import 'aircraft_image.dart';

part 'aircraft_info.freezed.dart';
part 'aircraft_info.g.dart';

@freezed
class AircraftInfo with _$AircraftInfo {
  const AircraftInfo._();
  const factory AircraftInfo({
    int? id,
    @JsonKey(name: 'photos', defaultValue: []) required List<AircraftImage> images,
    @JsonKey(name: 'reg_number') required String regNumber,
    @Default('') String name,
    @JsonKey(name: 'aircraft_type') String? type,
    @JsonKey(name: 'rollout_year', defaultValue: 0) required int rolloutYear,
    @JsonKey(name: 'registration_year', defaultValue: 0) required int registrationYear,
    @JsonKey(name: 'number_of_seats', defaultValue: 1) required int seats,
  }) = _AircraftInfo;

  factory AircraftInfo.fromJson(Map<String, dynamic> json) => _$AircraftInfoFromJson(json);

  String get years => '$rolloutYear / $registrationYear';
}
