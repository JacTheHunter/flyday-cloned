import 'package:dio/dio.dart';
import 'package:flyday_broker/config/constants/api_endpoints.dart';
import 'package:retrofit/retrofit.dart';

part 'notifications_api_client.g.dart';

@RestApi()
abstract class NotificationsApiClient {
  factory NotificationsApiClient(Dio dio) = _NotificationsApiClient;
  @POST(ApiEndPoints.kApiEndPointNotifications)
  Future<void> setFirebaseMessagingId({
    @Field('registration_id') required String registrationId,
    @Field() String? name,
    @Field('device_id') String? deviceId,
    @Field() String? type,
  });

  @DELETE('${ApiEndPoints.kApiEndPointNotifications}{registrationId}/')
  Future<void> dissablePushesWithDeviceId({
    @Path('device_id') required String deviceId,
  });
}
