import 'package:flyday_broker/features/notifications/models/notification.dart';

import '../../../common/models/paginated_list.dart';

abstract class INotificationsRepository {
  Future<PaginatedList<Notification>> fetch({
    required int page,
    required int limit,
  });
}
