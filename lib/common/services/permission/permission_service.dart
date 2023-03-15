import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import 'i_permission_service.dart';

class PermissionService implements IPermissionService {
  @override
  Future<PermissionStatus> requestCameraPermission() async {
    return await Permission.camera.request();
  }

  @override
  Future<bool> hasCameraPermission() async {
    return await Permission.camera.isGranted;
  }

  @override
  Future<PermissionStatus> requestPhotosPermission() async {
    return await Permission.photos.request();
  }

  @override
  Future<bool> hasPhotosPermission() async {
    return await Permission.photos.isGranted;
  }

  @override
  Future<PermissionStatus> requestStoragePermission() async {
    return await Permission.storage.request();
  }

  @override
  Future<bool> hasStoragePermission() async {
    return await Permission.storage.isGranted;
  }

  @override
  Future<bool> handleCameraPermission(BuildContext context) async {
    PermissionStatus cameraPermissionStatus = await requestCameraPermission();

    if (cameraPermissionStatus != PermissionStatus.granted) {
      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          actions: [
            ElevatedButton(
                onPressed: () {
                  context.router.pop();
                  openAppSettings();
                },
                child: Text('confirm'.tr())),
            ElevatedButton(onPressed: () => context.router.pop(), child: Text('cancel'.tr())),
          ],
          title: Text('camera_permission'.tr()),
          content: Text('camera_permission_open_settings'.tr()),
        ),
      );
      return false;
    }
    return true;
  }

  @override
  Future<bool> handlePhotosPermission(BuildContext context) async {
    PermissionStatus photosPermissionStatus = await requestPhotosPermission();

    if (photosPermissionStatus != PermissionStatus.granted) {
      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          actions: [
            ElevatedButton(
                onPressed: () {
                  context.router.pop();
                  openAppSettings();
                },
                child: Text('confirm'.tr())),
            ElevatedButton(onPressed: () => context.router.pop(), child: Text('cancel'.tr())),
          ],
          title: Text('photos_permission'.tr()),
          content: Text('photos_permission_open_settings'.tr()),
        ),
      );
      return false;
    }
    return true;
  }

  @override
  Future<bool> handleStoragePermission(BuildContext context) async {
    PermissionStatus storagePermissionStatus = await requestStoragePermission();

    if (storagePermissionStatus != PermissionStatus.granted) {
      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          actions: [
            ElevatedButton(
                onPressed: () {
                  context.router.pop();
                  openAppSettings();
                },
                child: Text('confirm'.tr())),
            ElevatedButton(onPressed: () => context.router.pop(), child: Text('cancel'.tr())),
          ],
          title: Text('storage_permission'.tr()),
          content: Text('storage_permission_open_settings'.tr()),
        ),
      );
      return false;
    }
    return true;
  }

  // @override
  // Future<bool> handleCameraPhotosStoragePermission(BuildContext context) async {
  //   Map<Permission, PermissionStatus> permissions = await handleCameraPermission();

  //   permissions.forEach((key, value) {

  //   });

  //   if (storagePermissionStatus != PermissionStatus.granted) {
  //     await showDialog(
  //       context: context,
  //       builder: (context) => AlertDialog(
  //         actions: [
  //           ElevatedButton(
  //               onPressed: () {
  //                 context.router.pop();
  //                 openAppSettings();
  //               },
  //               child: Text('confirm'.tr())),
  //           ElevatedButton(onPressed: () => context.router.pop(), child: Text('cancel'.tr())),
  //         ],
  //         title: Text('storage_permission'.tr()),
  //         content: Text('storage_permission_open_settings'.tr()),
  //       ),
  //     );
  //     return false;
  //   }
  //   return true;
  // }
}
