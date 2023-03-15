import 'package:flyday_broker/features/chat/models/message_file.dart';
import 'package:flyday_broker/features/chat/models/message_file_with_size.dart';

import 'message_file_with_size_from_message_file.dart';

Future<List<MessageFileWithSize>> messageFilesWithSizesFromMessageFiles(List<MessageFile> uploadedFiles) async {
  List<MessageFileWithSize> imageFiles = [];
  await Future.forEach<MessageFile>(uploadedFiles, (element) async {
    imageFiles.add(await messageFileWithSizeFromMessageFile(element));
  });
  return imageFiles;
}
