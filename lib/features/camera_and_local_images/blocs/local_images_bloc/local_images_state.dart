part of 'local_images_bloc.dart';

@freezed
class LocalImagesState with _$LocalImagesState {
  const LocalImagesState._();
  const factory LocalImagesState({
    @Default([]) List<Medium> localImagesMediums,
    @Default(StateStatus()) StateStatus status,
    @Default([]) List<int> selectedIndexes,
  }) = _LocalImagesState;
}
