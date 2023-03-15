import 'package:dio/dio.dart';
import 'package:flyday_broker/config/constants/api_endpoints.dart';
import 'package:flyday_broker/features/chat/models/message.dart';
import 'package:retrofit/retrofit.dart';

import '../../../common/models/file_name_with_file_string_in_b64.dart';
import '../../../common/models/paginated_list.dart';
import '../models/chat_info.dart';
import '../models/unread_messages_count.dart';

part 'chat_api_client.g.dart';

@RestApi(baseUrl: ApiEndPoints.kChatApiEndPointBase)
abstract class ChatApiClient {
  factory ChatApiClient(Dio dio) = _ChatApiClient;

  @GET('${ApiEndPoints.kApiEndPointChats}{chat_id}${ApiEndPoints.kApiEndPointMessages}')
  Future<PaginatedList<Message>> fetchChatMessages({
    @Path('chat_id') required int chatId,
    @Query('page') required int page,
    @Query('limit') required int limit,
  });

  @GET('${ApiEndPoints.kApiEndPointChats}{chat_id}/')
  Future<ChatInfo> getChatInfo({
    @Path('chat_id') required int chatId,
  });

  @GET(ApiEndPoints.kApiEndPointTechSupportMessages)
  Future<PaginatedList<Message>> fetchSupportChatMessages({
    @Query('page') required int page,
    @Query('limit') required int limit,
  });

  @POST(ApiEndPoints.kApiEndPointTechSupportSendMessage)
  Future<Message> sendSupportChatMessage({
    @Field('text') String? text,
    @Field('reply') int? reply,
    @Field('type_message') required int messageType,
    @Field('files_base64') List<FileNameWithFileStringInB64>? files,
  });

  @GET(ApiEndPoints.kApiEndPointTechSupportUnreadMessages)
  Future<UnreadMessagesCount> getSupportChatUnreadMessagesCount();
}
