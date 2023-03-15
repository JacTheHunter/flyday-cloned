part of 'send_support_message_bloc.dart';

@freezed
class SendSupportMessageState with _$SendSupportMessageState {
  const factory SendSupportMessageState({
    @Default('') String text,
    @Default(StateStatus()) StateStatus status,
  }) = _SendSupportMessageState;
}
