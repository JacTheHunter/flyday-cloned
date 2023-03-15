import 'package:dio/dio.dart';
import 'package:flyday_broker/config/constants/api_endpoints.dart';
import 'package:flyday_broker/features/special_conditions/models/special_condition.dart';
import 'package:retrofit/retrofit.dart';

import '../../../common/models/paginated_list.dart';

part 'special_conditions_api_client.g.dart';

@RestApi()
abstract class SpecialConditionsApiClient {
  factory SpecialConditionsApiClient(Dio dio) = _SpecialConditionsApiClient;
  @GET(ApiEndPoints.kApiEndPointSpecialConditions)
  Future<PaginatedList<SpecialCondition>> fetch({
    @Query('page') required int page,
    @Query('limit') required int limit,
  });
}
