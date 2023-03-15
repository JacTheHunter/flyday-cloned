import 'package:flyday_broker/features/special_conditions/models/special_condition.dart';

import '../../../common/models/paginated_list.dart';
import '../../../common/utils/exceptions.dart';
import '../data_sources/special_conditions_api_client.dart';
import 'i_special_conditions_repository.dart';

class SpecialConditionsRepository implements ISpecialConditionsRepository {
  final SpecialConditionsApiClient _apiClient;

  SpecialConditionsRepository({required SpecialConditionsApiClient apiClient}) : _apiClient = apiClient;

  @override
  Future<PaginatedList<SpecialCondition>> fetch({
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
