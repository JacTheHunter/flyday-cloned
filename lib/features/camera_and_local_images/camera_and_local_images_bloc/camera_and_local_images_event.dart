part of 'camera_and_local_images_bloc.dart';

@freezed
class CameraAndLocalImagesEvent with _$CameraAndLocalImagesEvent {
  const factory CameraAndLocalImagesEvent.start() = _Start;
  const factory CameraAndLocalImagesEvent.askCameraPermission(BuildContext context) = _AskCameraPermission;
  const factory CameraAndLocalImagesEvent.askPhotosPermission(BuildContext context) = _AskPhotosPermission;
}
