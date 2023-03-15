part of 'send_message_bloc.dart';

@freezed
class SendMessageState with _$SendMessageState {
  const factory SendMessageState({
    @Default('') String text,
    @Default(StateStatus()) StateStatus status,
  }) = _SendMessageState;
}
