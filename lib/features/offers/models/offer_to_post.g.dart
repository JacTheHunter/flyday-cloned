// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_to_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfferToPost _$$_OfferToPostFromJson(Map<String, dynamic> json) =>
    _$_OfferToPost(
      offer: OfferToPostOffer.fromJson(json['offer'] as Map<String, dynamic>),
      aircraft: OfferToPostAircraft.fromJson(
          json['aircraft'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OfferToPostToJson(_$_OfferToPost instance) =>
    <String, dynamic>{
      'offer': instance.offer,
      'aircraft': instance.aircraft,
    };
