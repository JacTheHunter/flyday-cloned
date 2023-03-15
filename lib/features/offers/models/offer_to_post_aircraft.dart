import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_to_post_aircraft.freezed.dart';
part 'offer_to_post_aircraft.g.dart';

@freezed
class OfferToPostAircraft with _$OfferToPostAircraft {
  factory OfferToPostAircraft({
    int? id,
    @JsonKey(name: 'is_modified') required bool isModified,
    @JsonKey(name: 'reg_number') required String regNumber,
    required String name,
    @JsonKey(name: 'aircraft_type') required String aircraftType,
    @JsonKey(name: 'rollout_year') required int rolloutYear,
    @JsonKey(name: 'registration_year') required int registrationYear,
    @JsonKey(name: 'number_of_seats') required int jetsSeatsNumber,
    @JsonKey(name: 'images_b64') required List<String> imagesStringsInb64,
    @JsonKey(name: 'images_urls') required List<String> imagesUrlsFromPatterns,
  }) = _OfferToPostAircraft;

  factory OfferToPostAircraft.fromJson(Map<String, dynamic> json) => _$OfferToPostAircraftFromJson(json);
}
