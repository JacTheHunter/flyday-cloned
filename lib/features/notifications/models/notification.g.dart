// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Notification _$$_NotificationFromJson(Map<String, dynamic> json) =>
    _$_Notification(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      type: $enumDecodeNullable(
              _$NotificationTypeEnumMap, json['notification_type'],
              unknownValue: NotificationType.custom) ??
          NotificationType.custom,
      objectId: json['object_id'] as int? ?? 0,
      image: json['image'] as String?,
      isRead: json['is_read'] as bool? ?? false,
      createdAtStr: json['created_at'] as String,
    );

Map<String, dynamic> _$$_NotificationToJson(_$_Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'notification_type': _$NotificationTypeEnumMap[instance.type]!,
      'object_id': instance.objectId,
      'image': instance.image,
      'is_read': instance.isRead,
      'created_at': instance.createdAtStr,
    };

const _$NotificationTypeEnumMap = {
  NotificationType.newAd: 'new_ad',
  NotificationType.newOffer: 'new_offer',
  NotificationType.newChatMessage: 'new_chat_msg',
  NotificationType.newSupportChatMessage: 'new_support_service_msg',
  NotificationType.endOfFlight: 'end_of_flight',
  NotificationType.custom: 'custom',
};
