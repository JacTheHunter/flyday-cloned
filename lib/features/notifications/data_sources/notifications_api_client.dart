import 'package:dio/dio.dart';
import 'package:flyday_broker/config/constants/api_endpoints.dart';
import 'package:flyday_broker/features/notifications/models/notification.dart';
import 'package:retrofit/retrofit.dart';

import '../../../common/models/paginated_list.dart';

part 'notifications_api_client.g.dart';

@RestApi()
abstract class NotificationsApiClient {
  factory NotificationsApiClient(Dio dio) = _NotificationsApiClient;
  @GET(ApiEndPoints.kApiEndPointAccountNotifications)
  Future<PaginatedList<Notification>> fetch({
    @Query('page') required int page,
    @Query('limit') required int limit,
  });
}
