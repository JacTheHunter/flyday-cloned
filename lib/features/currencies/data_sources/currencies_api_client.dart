import 'package:dio/dio.dart';
import 'package:flyday_broker/config/constants/api_endpoints.dart';
import 'package:flyday_broker/features/currencies/models/currency.dart';
import 'package:retrofit/retrofit.dart';

import '../../../common/models/paginated_list.dart';

part 'currencies_api_client.g.dart';

@RestApi()
abstract class CurrenciesApiClient {
  factory CurrenciesApiClient(Dio dio) = _CurrenciesApiClient;
  @GET(ApiEndPoints.kApiEndPointCurrencies)
  Future<PaginatedList<Currency>> fetch({
    @Query('page') required int page,
    @Query('limit') required int limit,
  });
}
