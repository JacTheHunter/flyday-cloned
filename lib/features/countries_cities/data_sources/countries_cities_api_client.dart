import 'package:dio/dio.dart';
import 'package:flyday_broker/config/constants/api_endpoints.dart';
import 'package:flyday_broker/features/countries_cities/models/city.dart';
import 'package:retrofit/retrofit.dart';

import '../../../common/models/paginated_list.dart';
import '../models/country.dart';

part 'countries_cities_api_client.g.dart';

@RestApi()
abstract class CountriesCitiesApiClient {
  factory CountriesCitiesApiClient(Dio dio) = _CountriesCitiesApiClient;
  @GET(ApiEndPoints.kApiEndPointCountries)
  Future<PaginatedList<Country>> fetchCountries({
    @Query('page') required int page,
    @Query('limit') required int limit,
  });

  @GET('${ApiEndPoints.kApiEndPointCountries}{countryId}${ApiEndPoints.kApiEndPointCities}')
  Future<PaginatedList<City>> fetchCities({
    @Path() required int countryId,
    @Query('page') required int page,
    @Query('limit') required int limit,
  });
}
