// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      id: json['_id'] as int,
      authorId: json['author_id'] as int?,
      author: json['author'] == null
          ? null
          : MessageAuthor.fromJson(json['author'] as Map<String, dynamic>),
      chatId: json['ad_id'] as int? ?? 0,
      offerd: json['offer_id'] as int? ?? 0,
      text: json['text'] as String? ?? '',
      files: (json['files'] as List<dynamic>?)
              ?.map((e) => MessageFile.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      messageType:
          $enumDecodeNullable(_$MessageTypeEnumMap, json['type_message']) ??
              MessageType.text,
      replyId: json['reply'] as int?,
      createdAtStr: json['created_at'] as String,
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'author_id': instance.authorId,
      'author': instance.author,
      'ad_id': instance.chatId,
      'offer_id': instance.offerd,
      'text': instance.text,
      'files': instance.files,
      'type_message': _$MessageTypeEnumMap[instance.messageType]!,
      'reply': instance.replyId,
      'created_at': instance.createdAtStr,
    };

const _$MessageTypeEnumMap = {
  MessageType.offer: 0,
  MessageType.text: 1,
  MessageType.image: 2,
  MessageType.file: 3,
  MessageType.document: 4,
};
