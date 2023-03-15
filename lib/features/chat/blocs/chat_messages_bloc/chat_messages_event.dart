part of 'chat_messages_bloc.dart';

@freezed
class ChatMessagesEvent with _$ChatMessagesEvent {
  const factory ChatMessagesEvent.fetch([bool? more]) = _Fetch;
  const factory ChatMessagesEvent.addMessage(Message message) = _AddMessage;
}
