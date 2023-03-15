import 'package:flyday_broker/features/ads/data_sources/ads_api_client.dart';
import 'package:flyday_broker/features/ads/models/ad.dart';
import 'package:flyday_broker/features/ads/models/ad_status.dart';

import '../../../common/models/paginated_list.dart';
import '../../../common/utils/exceptions.dart';
import 'i_ads_repository.dart';

class AdsRepository implements IAdsRepository {
  final AdsApiClient _apiClient;

  AdsRepository({required AdsApiClient apiClient}) : _apiClient = apiClient;
  @override
  Future<PaginatedList<Ad>> fetchAds({
    required int page,
    required int limit,
    required AdStatus? status,
  }) async {
    try {
      return await _apiClient.fetchAds(
        page: page,
        limit: limit,
        status: status.value,
      );
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<Ad> getAd({required int id}) async {
    try {
      return await _apiClient.getAd(id: id);
    } catch (e) {
      throw onApiException(e);
    }
  }
}
