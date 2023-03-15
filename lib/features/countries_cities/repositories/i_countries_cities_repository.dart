import 'package:flyday_broker/features/countries_cities/models/city.dart';
import 'package:flyday_broker/features/countries_cities/models/country.dart';

import '../../../common/models/paginated_list.dart';

abstract class ICountriesCitiesRepository {
  Future<PaginatedList<Country>> fetchCountries({
    required int page,
    required int limit,
  });
  Future<PaginatedList<City>> fetchCities({
    required int countryId,
    required int page,
    required int limit,
  });
}
