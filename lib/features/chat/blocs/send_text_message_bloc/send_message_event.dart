part of 'send_message_bloc.dart';

@freezed
class SendMessageEvent with _$SendMessageEvent {
  const factory SendMessageEvent.setText(String text) = _SetText;
  const factory SendMessageEvent.sendText() = _SendText;
  const factory SendMessageEvent.sendImages(List<String> pathes) = _SendImages;
  const factory SendMessageEvent.sendFiles(List<String> pathes) = _SendFiles;
  const factory SendMessageEvent.sendFilesFromWeb(List<FileNameWithFileBytes> files) = _SendFilesFromWeb;
  const factory SendMessageEvent.sendDocuments(List<Document> documents) = _SendDocuments;
  const factory SendMessageEvent.receiveOwnMessage() = _ReceiveOwnMessage;
  const factory SendMessageEvent.errorFromSocket(String error) = _ErrorFromSocket;
}
