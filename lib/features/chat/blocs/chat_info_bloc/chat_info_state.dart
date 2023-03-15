part of 'chat_info_bloc.dart';

@freezed
class ChatInfoState with _$ChatInfoState {
  const factory ChatInfoState({
    @Default(StateStatus()) StateStatus status,
    ChatInfo? selectedChat,
  }) = _ChatInfoState;
}
