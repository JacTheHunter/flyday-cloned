// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_to_post_aircraft.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfferToPostAircraft _$$_OfferToPostAircraftFromJson(
        Map<String, dynamic> json) =>
    _$_OfferToPostAircraft(
      id: json['id'] as int?,
      isModified: json['is_modified'] as bool,
      regNumber: json['reg_number'] as String,
      name: json['name'] as String,
      aircraftType: json['aircraft_type'] as String,
      rolloutYear: json['rollout_year'] as int,
      registrationYear: json['registration_year'] as int,
      jetsSeatsNumber: json['number_of_seats'] as int,
      imagesStringsInb64: (json['images_b64'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      imagesUrlsFromPatterns: (json['images_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_OfferToPostAircraftToJson(
        _$_OfferToPostAircraft instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_modified': instance.isModified,
      'reg_number': instance.regNumber,
      'name': instance.name,
      'aircraft_type': instance.aircraftType,
      'rollout_year': instance.rolloutYear,
      'registration_year': instance.registrationYear,
      'number_of_seats': instance.jetsSeatsNumber,
      'images_b64': instance.imagesStringsInb64,
      'images_urls': instance.imagesUrlsFromPatterns,
    };
