// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Airport _$$_AirportFromJson(Map<String, dynamic> json) => _$_Airport(
      id: json['id'] as int,
      name: json['name'] as String,
      iataCode: json['iata_code'] as String,
      icaoCode: json['icao_code'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      country: Country.fromJson(json['country'] as Map<String, dynamic>),
      city: City.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AirportToJson(_$_Airport instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'iata_code': instance.iataCode,
      'icao_code': instance.icaoCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'country': instance.country,
      'city': instance.city,
    };
