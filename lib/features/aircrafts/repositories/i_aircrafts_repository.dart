import 'package:flyday_broker/common/models/paginated_list.dart';
import 'package:flyday_broker/features/aircrafts/models/aircraft_type.dart';

import '../models/aircraft_info.dart';

abstract class IAircraftsRepository {
  Future<AircraftInfo?> getAircraftInfoGlobal({required String jetRegNumber});
  Future<PaginatedList<AircraftInfo>> fetchAircraftInfoLocal({
    required String jetRegNumber,
    required int page,
    required int limit,
  });
  Future<PaginatedList<AircraftType>> fetchAircraftTypes({
    required int page,
    required int limit,
  });
  Future<void> deleteLocalAircraft({
    required int id,
  });
}
