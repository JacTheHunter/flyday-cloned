import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flyday_broker/common/services/permission/i_permission_service.dart';
import 'package:flyday_broker/features/camera_and_local_images/blocs/local_images_bloc/local_images_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'camera_and_local_images_event.dart';
part 'camera_and_local_images_state.dart';
part 'camera_and_local_images_bloc.freezed.dart';

class CameraAndLocalImagesBloc extends Bloc<CameraAndLocalImagesEvent, CameraAndLocalImagesState> {
  final IPermissionService _permissionService;
  final LocalImagesBloc _localImagesBloc;
  CameraAndLocalImagesBloc({
    required IPermissionService permissionService,
    required LocalImagesBloc localImagesBloc,
  })  : _permissionService = permissionService,
        _localImagesBloc = localImagesBloc,
        super(const CameraAndLocalImagesState()) {
    on<_Start>(_onStart);
    on<_AskCameraPermission>(_onAskCameraPermission);
    on<_AskPhotosPermission>(_onAskPhotosPermission);
  }

  void _onStart(_Start event, Emitter<CameraAndLocalImagesState> emit) async {
    final hasCameraPermission = await _permissionService.hasCameraPermission();
    final hasPhotosPermission = Platform.isIOS
        ? await _permissionService.hasPhotosPermission()
        : await _permissionService.hasStoragePermission();
    emit(CameraAndLocalImagesState(hasCameraPermission: hasCameraPermission, hasPhotosPermission: hasPhotosPermission));
    if (hasPhotosPermission) {
      _localImagesBloc.add(const LocalImagesEvent.fetch());
    }
  }

  void _onAskCameraPermission(_AskCameraPermission event, Emitter<CameraAndLocalImagesState> emit) async {
    final hasCameraPermission = await _permissionService.handleCameraPermission(event.context);
    emit(state.copyWith(hasCameraPermission: hasCameraPermission));
  }

  void _onAskPhotosPermission(_AskPhotosPermission event, Emitter<CameraAndLocalImagesState> emit) async {
    final hasPhotosPermission = Platform.isIOS
        ? await _permissionService.handlePhotosPermission(event.context)
        : await _permissionService.handleStoragePermission(event.context);
    emit(state.copyWith(hasPhotosPermission: hasPhotosPermission));
    if (hasPhotosPermission) {
      _localImagesBloc.add(const LocalImagesEvent.fetch());
    }
  }
}
