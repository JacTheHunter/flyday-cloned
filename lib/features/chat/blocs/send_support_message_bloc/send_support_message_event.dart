part of 'send_support_message_bloc.dart';

@freezed
class SendSupportMessageEvent with _$SendSupportMessageEvent {
  const factory SendSupportMessageEvent.setText(String text) = _SetText;
  const factory SendSupportMessageEvent.sendText() = _SendText;
  const factory SendSupportMessageEvent.sendImages(List<String> pathes) = _SendImages;
  const factory SendSupportMessageEvent.sendFiles(List<String> pathes) = _SendFiles;
  const factory SendSupportMessageEvent.sendFilesFromWeb(List<FileNameWithFileBytes> files) = _SendFilesFromWeb;
}
