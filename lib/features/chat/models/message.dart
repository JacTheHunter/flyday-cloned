import 'package:flyday_broker/features/chat/models/message_author.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'message_file.dart';
import 'message_type.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  const Message._();
  const factory Message({
    @JsonKey(name: '_id') required int id,
    @JsonKey(name: 'author_id') int? authorId,
    MessageAuthor? author,
    @JsonKey(name: 'ad_id', defaultValue: 0) required int chatId,
    @JsonKey(name: 'offer_id', defaultValue: 0) required int offerd,
    @Default('') String text,
    @Default([]) List<MessageFile> files,
    @JsonKey(name: 'type_message', defaultValue: MessageType.text) required MessageType messageType,
    @JsonKey(name: 'reply') int? replyId,
    @JsonKey(name: 'created_at') required String createdAtStr,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);

  DateTime get createdAt => (createdAtStr.endsWith('z') || createdAtStr.endsWith('Z'))
      ? DateTime.parse(createdAtStr)
      : DateTime.parse('${createdAtStr}Z');

  DateTime get createdAtLocal => createdAt.toLocal();
}
