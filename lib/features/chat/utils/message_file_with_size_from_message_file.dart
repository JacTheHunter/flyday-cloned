import 'package:flyday_broker/features/chat/models/message_file.dart';
import 'package:flyday_broker/features/chat/models/message_file_with_size.dart';

import '../../../common/utils/get_image_size.dart';

Future<MessageFileWithSize> messageFileWithSizeFromMessageFile(MessageFile file) async {
  final size = await getImageSize(file.path);
  return MessageFileWithSize(file: file, size: size);
}
