part of 'support_chat_unread_messages_count_bloc.dart';

@freezed
class SupportChatUnreadMessagesCountState with _$SupportChatUnreadMessagesCountState {
  const factory SupportChatUnreadMessagesCountState({
    @Default(StateStatus()) StateStatus status,
    @Default(0) int count,
  }) = _SupportChatUnreadMessagesCountState;
}
