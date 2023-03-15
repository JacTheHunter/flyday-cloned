part of 'chat_messages_bloc.dart';

@freezed
class ChatMessagesState with _$ChatMessagesState {
  const factory ChatMessagesState({
    @Default(StateStatus()) StateStatus status,
    @Default([]) List<Message> messages,
  }) = _ChatMessagesState;
}
