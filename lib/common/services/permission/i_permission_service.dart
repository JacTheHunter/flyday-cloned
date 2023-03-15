import 'package:flutter/material.dart';

abstract class IPermissionService {
  Future requestPhotosPermission();

  Future<bool> handlePhotosPermission(BuildContext context);

  Future requestCameraPermission();

  Future<bool> handleCameraPermission(BuildContext context);

  Future requestStoragePermission();

  Future<bool> handleStoragePermission(BuildContext context);

  Future<bool> hasCameraPermission();

  Future<bool> hasPhotosPermission();

  Future<bool> hasStoragePermission();
}
