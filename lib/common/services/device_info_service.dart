import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';

class DeviceInfoService {
  DeviceInfoService._internal();

  late final IosDeviceInfo _iosDeviceInfo;
  late final AndroidDeviceInfo _androidDeviceInfo;
  late final DeviceInfoPlugin _deviceInfo;
  late final WebBrowserInfo _webBrowserInfo;

  static Future<DeviceInfoService> init() async {
    DeviceInfoService component = DeviceInfoService._internal();
    await component._init();
    return component;
  }

  Future<void> _init() async {
    _deviceInfo = DeviceInfoPlugin();

    if (!kIsWeb && Platform.isIOS) _iosDeviceInfo = await _deviceInfo.iosInfo;
    if (!kIsWeb && Platform.isAndroid) _androidDeviceInfo = await _deviceInfo.androidInfo;
    if (kIsWeb) _webBrowserInfo = await _deviceInfo.webBrowserInfo;
  }

  String get deviceName {
    if (!kIsWeb && Platform.isIOS) {
      return _iosDeviceInfo.name ?? '';
    } else if (!kIsWeb && Platform.isAndroid) {
      return _androidDeviceInfo.model ?? '';
    } else {
      return _webBrowserInfo.browserName.name;
    }
  }

  String get deviceId {
    if (!kIsWeb && Platform.isIOS) {
      return _iosDeviceInfo.identifierForVendor ?? '';
    } else if (!kIsWeb && Platform.isAndroid) {
      return _androidDeviceInfo.id ?? '';
    } else {
      return _webBrowserInfo.userAgent ?? '';
    }
  }

  String get type {
    if (!kIsWeb && Platform.isIOS) {
      return 'ios';
    } else if (!kIsWeb && Platform.isAndroid) {
      return 'android';
    } else {
      return 'web';
    }
  }
}
