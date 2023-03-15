import 'package:flyday_broker/common/models/paginated_list.dart';
import 'package:flyday_broker/features/offers/models/offer.dart';
import 'package:flyday_broker/features/offers/models/offer_to_post.dart';

abstract class IOffersRepository {
  Future<void> createOffer({required OfferToPost offer});
  Future<PaginatedList<Offer>> fetchOffersOfAd({
    required int adId,
    required int page,
    required int limit,
  });
  Future<void> withdrawOffer({
    required int id,
  });
}
