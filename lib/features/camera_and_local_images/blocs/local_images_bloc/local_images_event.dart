part of 'local_images_bloc.dart';

@freezed
class LocalImagesEvent with _$LocalImagesEvent {
  const factory LocalImagesEvent.fetch([bool? more]) = _Fetch;
  const factory LocalImagesEvent.select(int index) = _Select;
  const factory LocalImagesEvent.sendSelected() = _SendSelected;
}
