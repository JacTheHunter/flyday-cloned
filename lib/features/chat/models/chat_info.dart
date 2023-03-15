import 'package:freezed_annotation/freezed_annotation.dart';

import 'message_author.dart';

part 'chat_info.freezed.dart';
part 'chat_info.g.dart';

@freezed
class ChatInfo with _$ChatInfo {
  const factory ChatInfo({
    @JsonKey(name: '_id') required int id,
    required MessageAuthor broker,
    required MessageAuthor customer,
    @JsonKey(name: 'add', defaultValue: 0) required int addId,
    @JsonKey(name: 'offer', defaultValue: 0) required int offerId,
    @JsonKey(name: 'can_write', defaultValue: false) required bool canWrite,
    @JsonKey(name: 'is_done', defaultValue: false) required bool isDone,
  }) = _ChatInfo;

  factory ChatInfo.fromJson(Map<String, dynamic> json) => _$ChatInfoFromJson(json);
}
