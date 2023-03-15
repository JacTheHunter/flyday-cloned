import 'package:dio/dio.dart';
import 'package:flyday_broker/config/constants/api_endpoints.dart';
import 'package:retrofit/retrofit.dart';

import '../../../common/models/paginated_list.dart';
import '../models/ad.dart';

part 'ads_api_client.g.dart';

@RestApi()
abstract class AdsApiClient {
  factory AdsApiClient(Dio dio) = _AdsApiClient;
  @GET(ApiEndPoints.kApiEndPointAds)
  Future<PaginatedList<Ad>> fetchAds({
    @Query('page') required int page,
    @Query('limit') required int limit,
    @Query('status') String? status,
  });

  @GET('${ApiEndPoints.kApiEndPointAds}{id}/')
  Future<Ad> getAd({
    @Path('id') required int id,
  });
}
