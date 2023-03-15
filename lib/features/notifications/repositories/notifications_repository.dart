import 'package:flyday_broker/features/notifications/data_sources/notifications_api_client.dart';
import 'package:flyday_broker/features/notifications/models/notification.dart';

import '../../../common/models/paginated_list.dart';
import '../../../common/utils/exceptions.dart';
import 'i_notifications_repository.dart';

class NotificationsRepository implements INotificationsRepository {
  final NotificationsApiClient _apiClient;

  NotificationsRepository({required NotificationsApiClient apiClient}) : _apiClient = apiClient;

  @override
  Future<PaginatedList<Notification>> fetch({
    required int page,
    required int limit,
  }) async {
    try {
      return await _apiClient.fetch(
        page: page,
        limit: limit,
      );
    } catch (e) {
      throw onApiException(e);
    }
  }
}
