// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RouteDetail _$$_RouteDetailFromJson(Map<String, dynamic> json) =>
    _$_RouteDetail(
      specialConditions: (json['special_conditions'] as List<dynamic>?)
              ?.map((e) => SpecialCondition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      numberOfPassengers: json['number_of_passengers'] as int? ?? 0,
      departureDate: DateTime.parse(json['departure_date'] as String),
      fromWhere: Airport.fromJson(json['from_where'] as Map<String, dynamic>),
      toWhere: Airport.fromJson(json['to_where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RouteDetailToJson(_$_RouteDetail instance) =>
    <String, dynamic>{
      'special_conditions': instance.specialConditions,
      'number_of_passengers': instance.numberOfPassengers,
      'departure_date': instance.departureDate.toIso8601String(),
      'from_where': instance.fromWhere,
      'to_where': instance.toWhere,
    };
