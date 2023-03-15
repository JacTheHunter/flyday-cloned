// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aircraft_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AircraftInfo _$$_AircraftInfoFromJson(Map<String, dynamic> json) =>
    _$_AircraftInfo(
      id: json['id'] as int?,
      images: (json['photos'] as List<dynamic>?)
              ?.map((e) => AircraftImage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      regNumber: json['reg_number'] as String,
      name: json['name'] as String? ?? '',
      type: json['aircraft_type'] as String?,
      rolloutYear: json['rollout_year'] as int? ?? 0,
      registrationYear: json['registration_year'] as int? ?? 0,
      seats: json['number_of_seats'] as int? ?? 1,
    );

Map<String, dynamic> _$$_AircraftInfoToJson(_$_AircraftInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photos': instance.images,
      'reg_number': instance.regNumber,
      'name': instance.name,
      'aircraft_type': instance.type,
      'rollout_year': instance.rolloutYear,
      'registration_year': instance.registrationYear,
      'number_of_seats': instance.seats,
    };
