part of 'support_chat_messages_bloc.dart';

@freezed
class SupportChatMessagesState with _$SupportChatMessagesState {
  const factory SupportChatMessagesState({
    @Default(StateStatus()) StateStatus status,
    @Default([]) List<Message> messages,
  }) = _SupportChatMessagesState;
}
