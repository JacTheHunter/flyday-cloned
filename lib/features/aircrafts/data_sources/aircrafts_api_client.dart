import 'package:dio/dio.dart';
import 'package:flyday_broker/config/constants/api_endpoints.dart';
import 'package:flyday_broker/features/aircrafts/models/aircraft_info.dart';
import 'package:flyday_broker/features/aircrafts/models/aircraft_type.dart';
import 'package:retrofit/retrofit.dart';

import '../../../common/models/paginated_list.dart';

part 'aircrafts_api_client.g.dart';

@RestApi()
abstract class AircraftsApiClient {
  factory AircraftsApiClient(Dio dio) = _AircraftsApiClient;

  @GET('${ApiEndPoints.kApiEndPointAircraftGlobal}{jetRegNumber}/')
  Future<AircraftInfo?> getAircraftInfoGlobal({
    @Path('jetRegNumber') required String jetRegNumber,
  });

  @GET(ApiEndPoints.kApiEndPointAircraftLocal)
  Future<PaginatedList<AircraftInfo>> fetchAircraftsInfoLocal({
    @Query('search') required String jetRegNumber,
    @Query('page') required int page,
    @Query('limit') required int limit,
  });
  @GET(ApiEndPoints.kApiEndPointAircraftType)
  Future<PaginatedList<AircraftType>> fetchAircraftTypes({
    @Query('page') required int page,
    @Query('limit') required int limit,
  });
  @DELETE('${ApiEndPoints.kApiEndPointAircraftLocal}{id}/')
  Future<void> deleteLocalAircraft({
    @Path('id') required int id,
  });
}
