// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ad _$$_AdFromJson(Map<String, dynamic> json) => _$_Ad(
      id: json['id'] as int,
      type: $enumDecode(_$AdTypeEnumMap, json['ad_type']),
      status: json['status'] == null
          ? AdStatus.all
          : AdStatus.fromJson(json['status'] as String),
      routeDetails: (json['route_details'] as List<dynamic>?)
              ?.map((e) => RouteDetail.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      chatId: json['chat_id'] as int? ?? 0,
      hasUnreadMessages: json['unread_message'] as bool? ?? false,
      brokersWhoResponsed: json['count_brokers'] as int? ?? 0,
      mapImage: json['map_image'] as String? ?? '',
    );

Map<String, dynamic> _$$_AdToJson(_$_Ad instance) => <String, dynamic>{
      'id': instance.id,
      'ad_type': _$AdTypeEnumMap[instance.type]!,
      'status': _$AdStatusEnumMap[instance.status]!,
      'route_details': instance.routeDetails,
      'chat_id': instance.chatId,
      'unread_message': instance.hasUnreadMessages,
      'count_brokers': instance.brokersWhoResponsed,
      'map_image': instance.mapImage,
    };

const _$AdTypeEnumMap = {
  AdType.estimation: 'estimation',
  AdType.liveQuote: 'live_quote',
};

const _$AdStatusEnumMap = {
  AdStatus.all: 'all',
  AdStatus.neww: 'neww',
  AdStatus.pending: 'pending',
  AdStatus.canceled: 'canceled',
  AdStatus.done: 'done',
};
