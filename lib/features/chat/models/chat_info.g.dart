// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatInfo _$$_ChatInfoFromJson(Map<String, dynamic> json) => _$_ChatInfo(
      id: json['_id'] as int,
      broker: MessageAuthor.fromJson(json['broker'] as Map<String, dynamic>),
      customer:
          MessageAuthor.fromJson(json['customer'] as Map<String, dynamic>),
      addId: json['add'] as int? ?? 0,
      offerId: json['offer'] as int? ?? 0,
      canWrite: json['can_write'] as bool? ?? false,
      isDone: json['is_done'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ChatInfoToJson(_$_ChatInfo instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'broker': instance.broker,
      'customer': instance.customer,
      'add': instance.addId,
      'offer': instance.offerId,
      'can_write': instance.canWrite,
      'is_done': instance.isDone,
    };
