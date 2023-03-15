import 'package:flyday_broker/features/special_conditions/models/special_condition.dart';

import '../../../common/models/paginated_list.dart';

abstract class ISpecialConditionsRepository {
  Future<PaginatedList<SpecialCondition>> fetch({
    required int page,
    required int limit,
  });
}
