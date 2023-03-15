import 'package:freezed_annotation/freezed_annotation.dart';

part 'aircraft_type.freezed.dart';
part 'aircraft_type.g.dart';

@freezed
class AircraftType with _$AircraftType {
  factory AircraftType({
    @JsonKey(name: 'type_name') required String name,
  }) = _AircraftType;

  factory AircraftType.fromJson(Map<String, dynamic> json) => _$AircraftTypeFromJson(json);
}
