import 'package:flyday_broker/common/models/paginated_list.dart';
import 'package:flyday_broker/features/offers/data_sources/offers_api_client.dart';
import 'package:flyday_broker/features/offers/models/offer.dart';
import 'package:flyday_broker/features/offers/models/offer_to_post.dart';

import '../../../common/utils/exceptions.dart';
import 'i_offers_repository.dart';

class OffersRepository implements IOffersRepository {
  final OffersApiClient _apiClient;

  OffersRepository({required OffersApiClient apiClient}) : _apiClient = apiClient;

  @override
  Future<void> createOffer({required OfferToPost offer}) async {
    try {
      return await _apiClient.createOffer(offer: offer);
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<PaginatedList<Offer>> fetchOffersOfAd({
    required int adId,
    required int page,
    required int limit,
  }) async {
    try {
      return await _apiClient.fetchOffersOfAd(adId: adId, page: page, limit: limit);
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<void> withdrawOffer({required int id}) async {
    try {
      return await _apiClient.withdrawOffer(id: id);
    } catch (e) {
      throw onApiException(e);
    }
  }
}
