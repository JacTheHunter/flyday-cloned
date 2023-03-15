part of 'support_chat_unread_messages_count_bloc.dart';

@freezed
class SupportChatUnreadMessagesCountEvent with _$SupportChatUnreadMessagesCountEvent {
  const factory SupportChatUnreadMessagesCountEvent.get() = _Get;
  const factory SupportChatUnreadMessagesCountEvent.chatOpened() = _ChatOpened;
  const factory SupportChatUnreadMessagesCountEvent.newMessage() = _NewMessage;
}
