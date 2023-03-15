import 'package:freezed_annotation/freezed_annotation.dart';

part 'aircraft_image.freezed.dart';
part 'aircraft_image.g.dart';

@freezed
class AircraftImage with _$AircraftImage {
  const AircraftImage._();
  const factory AircraftImage({
    int? id,
    // @JsonKey(name: 'photo') required String url,
    String? url,
    String? photo,
  }) = _AircraftImage;

  factory AircraftImage.fromJson(Map<String, dynamic> json) => _$AircraftImageFromJson(json);

  String? get correctUrl => photo ?? url;
}
