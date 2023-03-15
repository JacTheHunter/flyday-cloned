import 'package:flyday_broker/features/countries_cities/models/city.dart';
import 'package:flyday_broker/features/countries_cities/models/country.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'airport.freezed.dart';
part 'airport.g.dart';

@freezed
class Airport with _$Airport {
  factory Airport({
    required int id,
    required String name,
    @JsonKey(name: 'iata_code') required String iataCode,
    @JsonKey(name: 'icao_code') required String icaoCode,
    required String latitude,
    required String longitude,
    required Country country,
    required City city,
  }) = _Airport;

  factory Airport.fromJson(Map<String, dynamic> json) => _$AirportFromJson(json);
}
