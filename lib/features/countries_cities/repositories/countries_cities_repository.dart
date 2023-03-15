import 'package:flyday_broker/features/countries_cities/data_sources/countries_cities_api_client.dart';
import 'package:flyday_broker/features/countries_cities/models/city.dart';
import 'package:flyday_broker/features/countries_cities/models/country.dart';

import '../../../common/models/paginated_list.dart';
import '../../../common/utils/exceptions.dart';
import 'i_countries_cities_repository.dart';

class CountriesCitiesRepository implements ICountriesCitiesRepository {
  final CountriesCitiesApiClient _apiClient;

  CountriesCitiesRepository({required CountriesCitiesApiClient apiClient}) : _apiClient = apiClient;

  @override
  Future<PaginatedList<Country>> fetchCountries({
    required int page,
    required int limit,
  }) async {
    try {
      return await _apiClient.fetchCountries(
        page: page,
        limit: limit,
      );
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<PaginatedList<City>> fetchCities({
    required int countryId,
    required int page,
    required int limit,
  }) async {
    try {
      return await _apiClient.fetchCities(
        countryId: countryId,
        page: page,
        limit: limit,
      );
    } catch (e) {
      throw onApiException(e);
    }
  }
}
