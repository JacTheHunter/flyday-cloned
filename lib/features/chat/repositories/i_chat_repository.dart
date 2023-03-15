import 'package:flyday_broker/common/models/paginated_list.dart';
import 'package:flyday_broker/features/chat/models/chat_info.dart';
import 'package:flyday_broker/features/chat/models/message.dart';

import '../../../common/models/file_name_with_file_string_in_b64.dart';
import '../models/message_type.dart';

abstract class IChatRepository {
  Future<PaginatedList<Message>> fetchChatMessages({
    required int chatId,
    required int page,
    required int limit,
  });

  Future<ChatInfo> getChatInfo({
    required int chatId,
  });

  Future<int> getSupportChatUnreadMessagesCount();

  Future<PaginatedList<Message>> fetchSupportChatMessages({
    required int page,
    required int limit,
  });

  Future<Message> sendhSupportChatMessage({
    String? text,
    int? reply,
    List<FileNameWithFileStringInB64>? files,
    required MessageType messageType,
  });
}
