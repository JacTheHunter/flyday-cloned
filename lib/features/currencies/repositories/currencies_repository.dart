import 'package:flyday_broker/features/currencies/models/currency.dart';

import '../../../common/models/paginated_list.dart';
import '../../../common/utils/exceptions.dart';
import '../data_sources/currencies_api_client.dart';
import 'i_currencies_repository.dart';

class CurrenciesRepository implements ICurrenciesRepository {
  final CurrenciesApiClient _apiClient;

  CurrenciesRepository({required CurrenciesApiClient apiClient}) : _apiClient = apiClient;

  @override
  Future<PaginatedList<Currency>> fetch({
    required int page,
    required int limit,
  }) async {
    try {
      return await _apiClient.fetch(
        page: page,
        limit: limit,
      );
    } catch (e) {
      throw onApiException(e);
    }
  }
}
