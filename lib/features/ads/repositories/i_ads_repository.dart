import 'package:flyday_broker/features/ads/models/ad.dart';
import 'package:flyday_broker/features/ads/models/ad_status.dart';

import '../../../common/models/paginated_list.dart';

abstract class IAdsRepository {
  Future<PaginatedList<Ad>> fetchAds({
    required int page,
    required int limit,
    required AdStatus? status,
  });

  Future<Ad> getAd({
    required int id,
  });
}
