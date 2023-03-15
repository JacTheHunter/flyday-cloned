import 'package:dio/dio.dart';
import 'package:flyday_broker/config/constants/api_endpoints.dart';
import 'package:retrofit/retrofit.dart';

import '../../../common/models/paginated_list.dart';
import '../models/offer.dart';
import '../models/offer_to_post.dart';

part 'offers_api_client.g.dart';

@RestApi()
abstract class OffersApiClient {
  factory OffersApiClient(Dio dio) = _OffersApiClient;

  @POST(ApiEndPoints.kApiEndPointOffers)
  Future<void> createOffer({
    @Body() required OfferToPost offer,
  });

  @GET('${ApiEndPoints.kApiEndPointAds}{adId}${ApiEndPoints.kApiEndPointOffers}')
  Future<PaginatedList<Offer>> fetchOffersOfAd({
    @Path() required int adId,
    @Query('page') required int page,
    @Query('limit') required int limit,
  });

  @DELETE('${ApiEndPoints.kApiEndPointOffers}{id}/')
  Future<void> withdrawOffer({
    @Path() required int id,
  });
}
