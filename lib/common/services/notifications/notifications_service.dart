import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flyday_broker/common/services/device_info_service.dart';
import 'package:flyday_broker/common/services/notifications/data_sources/notifications_api_client.dart';

import '../../../config/.env/env.dart';

class NotificationsService {
  final NotificationsApiClient _notificationsApiClient;

  const NotificationsService({required NotificationsApiClient notificationsApiClient})
      : _notificationsApiClient = notificationsApiClient;

  Future<NotificationsService> init() async {
    NotificationSettings settings = await FirebaseMessaging.instance.requestPermission();

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      // print('User granted permission');
    } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
      // print('User granted provisional permission');
    } else {
      await FirebaseMessaging.instance.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: true,
        sound: true,
      );
    }

    return this;
  }

  Stream<RemoteMessage> get onMessage => FirebaseMessaging.onMessage;
  Stream<RemoteMessage> get onMessageOpenedApp => FirebaseMessaging.onMessageOpenedApp;
  Future<RemoteMessage?> get initialMessage => FirebaseMessaging.instance.getInitialMessage();
  // StreamController<String> get notificationServiceErrors => StreamController();

  void setFcm() async {
    final deviceService = await DeviceInfoService.init();
    final name = deviceService.deviceName;
    final deviceId = deviceService.deviceId;
    final type = deviceService.type;

    try {
      final token = await FirebaseMessaging.instance.getToken(vapidKey: kIsWeb ? Env.webPushCertificates : null);
      if (token == null) return;
      print(token);
      await _notificationsApiClient.setFirebaseMessagingId(
        registrationId: token,
        deviceId: deviceId,
        name: name,
        type: type,
      );
    } catch (e) {
      print(e);
      // notificationServiceErrors.sink.add(onApiException(e).message);
    }
  }

  void onLogOut() async {
    final deviceService = await DeviceInfoService.init();
    final deviceId = deviceService.deviceId;
    try {
      await _notificationsApiClient.dissablePushesWithDeviceId(
        deviceId: deviceId,
      );
    } catch (e) {
      print(e);
      // notificationServiceErrors.sink.add(onApiException(e).message);
    }
  }

  // void dispose() {
  //   notificationServiceErrors.close();
  // }
}
