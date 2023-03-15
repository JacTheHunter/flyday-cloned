import 'package:flyday_broker/features/currencies/models/currency.dart';

import '../../../common/models/paginated_list.dart';

abstract class ICurrenciesRepository {
  Future<PaginatedList<Currency>> fetch({
    required int page,
    required int limit,
  });
}
