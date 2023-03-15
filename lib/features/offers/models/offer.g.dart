// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Offer _$$_OfferFromJson(Map<String, dynamic> json) => _$_Offer(
      id: json['id'] as int,
      price: json['price'] as String,
      currency: Currency.fromJson(json['currency'] as Map<String, dynamic>),
      priceProfile: json['price_profile'] as String,
      flightHour: json['flight_hour'] as int,
      flightMinute: json['flight_minute'] as int,
      flightDateTime: DateTime.parse(json['time_to_fly'] as String),
      validUntil: DateTime.parse(json['valid_until'] as String),
      refuelingsNumber: json['refueling'] as int,
      generalNote: json['general_note'] as String,
      conditions: (json['convenience'] as List<dynamic>?)
              ?.map((e) => SpecialCondition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      adId: json['ad'] as int,
      aircraft: json['aircraft'] == null
          ? null
          : AircraftInfo.fromJson(json['aircraft'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OfferToJson(_$_Offer instance) => <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'currency': instance.currency,
      'price_profile': instance.priceProfile,
      'flight_hour': instance.flightHour,
      'flight_minute': instance.flightMinute,
      'time_to_fly': instance.flightDateTime.toIso8601String(),
      'valid_until': instance.validUntil.toIso8601String(),
      'refueling': instance.refuelingsNumber,
      'general_note': instance.generalNote,
      'convenience': instance.conditions,
      'ad': instance.adId,
      'aircraft': instance.aircraft,
    };
