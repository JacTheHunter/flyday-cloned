part of 'support_chat_messages_bloc.dart';

@freezed
class SupportChatMessagesEvent with _$SupportChatMessagesEvent {
  const factory SupportChatMessagesEvent.fetch([bool? more]) = _Fetch;
}
