part of 'camera_and_local_images_bloc.dart';

@freezed
class CameraAndLocalImagesState with _$CameraAndLocalImagesState {
  const factory CameraAndLocalImagesState({
    @Default(false) bool hasCameraPermission,
    @Default(false) bool hasPhotosPermission,
  }) = _CameraAndLocalImagesState;
}
