import 'package:flyday_broker/common/models/paginated_list.dart';
import 'package:flyday_broker/features/chat/data_sources/chat_api_client.dart';
import 'package:flyday_broker/features/chat/models/chat_info.dart';
import 'package:flyday_broker/features/chat/models/message.dart';

import '../../../common/models/file_name_with_file_string_in_b64.dart';
import '../../../common/utils/exceptions.dart';
import '../models/message_type.dart';
import 'i_chat_repository.dart';

class ChatRepository implements IChatRepository {
  final ChatApiClient _apiClient;

  ChatRepository({required ChatApiClient apiClient}) : _apiClient = apiClient;

  @override
  Future<PaginatedList<Message>> fetchChatMessages({
    required int chatId,
    required int page,
    required int limit,
  }) async {
    try {
      return await _apiClient.fetchChatMessages(
        chatId: chatId,
        page: page,
        limit: limit,
      );
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<ChatInfo> getChatInfo({
    required int chatId,
  }) async {
    try {
      return await _apiClient.getChatInfo(
        chatId: chatId,
      );
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<PaginatedList<Message>> fetchSupportChatMessages({
    required int page,
    required int limit,
  }) async {
    try {
      return await _apiClient.fetchSupportChatMessages(
        page: page,
        limit: limit,
      );
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<Message> sendhSupportChatMessage({
    String? text,
    int? reply,
    List<FileNameWithFileStringInB64>? files,
    required MessageType messageType,
  }) async {
    try {
      return await _apiClient.sendSupportChatMessage(
        text: text,
        reply: reply,
        files: files,
        messageType: messageType.index,
      );
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<int> getSupportChatUnreadMessagesCount() async {
    try {
      return (await _apiClient.getSupportChatUnreadMessagesCount()).count;
    } catch (e) {
      throw onApiException(e);
    }
  }
}
