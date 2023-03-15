// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_to_post_offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfferToPostOffer _$$_OfferToPostOfferFromJson(Map<String, dynamic> json) =>
    _$_OfferToPostOffer(
      price: json['price'] as String,
      currencyId: json['currency'] as int,
      flightHour: json['flight_hour'] as int,
      flightMinute: json['flight_minute'] as int,
      flightDateTime: DateTime.parse(json['time_to_fly'] as String),
      validUntil: DateTime.parse(json['valid_until'] as String),
      refuelingsNumber: json['refueling'] as int,
      generalNote: json['general_note'] as String,
      conveniences:
          (json['convenience'] as List<dynamic>).map((e) => e as int).toList(),
      adId: json['ad'] as int,
    );

Map<String, dynamic> _$$_OfferToPostOfferToJson(_$_OfferToPostOffer instance) =>
    <String, dynamic>{
      'price': instance.price,
      'currency': instance.currencyId,
      'flight_hour': instance.flightHour,
      'flight_minute': instance.flightMinute,
      'time_to_fly': instance.flightDateTime.toIso8601String(),
      'valid_until': instance.validUntil.toIso8601String(),
      'refueling': instance.refuelingsNumber,
      'general_note': instance.generalNote,
      'convenience': instance.conveniences,
      'ad': instance.adId,
    };
