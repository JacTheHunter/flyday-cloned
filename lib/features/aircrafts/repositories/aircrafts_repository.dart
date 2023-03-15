import 'package:flyday_broker/features/aircrafts/models/aircraft_type.dart';

import '../../../common/models/paginated_list.dart';
import '../../../common/utils/exceptions.dart';
import '../data_sources/aircrafts_api_client.dart';
import '../models/aircraft_info.dart';
import 'i_aircrafts_repository.dart';

class AircraftsRepository implements IAircraftsRepository {
  final AircraftsApiClient _apiClient;

  AircraftsRepository({required AircraftsApiClient apiClient}) : _apiClient = apiClient;

  @override
  Future<AircraftInfo?> getAircraftInfoGlobal({required String jetRegNumber}) async {
    try {
      return await _apiClient.getAircraftInfoGlobal(jetRegNumber: jetRegNumber);
    } catch (e) {
      if (isExceptionWith404(e)) {
        return null;
      } else {
        throw onApiException(e);
      }
    }
  }

  @override
  Future<PaginatedList<AircraftInfo>> fetchAircraftInfoLocal({
    required String jetRegNumber,
    required int page,
    required int limit,
  }) async {
    try {
      return await _apiClient.fetchAircraftsInfoLocal(
        jetRegNumber: jetRegNumber,
        page: page,
        limit: limit,
      );
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<PaginatedList<AircraftType>> fetchAircraftTypes({required int page, required int limit}) async {
    try {
      return await _apiClient.fetchAircraftTypes(
        page: page,
        limit: limit,
      );
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<void> deleteLocalAircraft({required int id}) async {
    try {
      return await _apiClient.deleteLocalAircraft(
        id: id,
      );
    } catch (e) {
      throw onApiException(e);
    }
  }
}
