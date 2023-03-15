import 'package:freezed_annotation/freezed_annotation.dart';

part 'unread_messages_count.freezed.dart';
part 'unread_messages_count.g.dart';

@freezed
class UnreadMessagesCount with _$UnreadMessagesCount {
  factory UnreadMessagesCount({
    required int count,
  }) = _UnreadMessagesCount;

  factory UnreadMessagesCount.fromJson(Map<String, dynamic> json) => _$UnreadMessagesCountFromJson(json);
}
