part of 'file_message_cache_bloc.dart';

@freezed
class FileMessageCacheState with _$FileMessageCacheState {
  const factory FileMessageCacheState({
    @Default(StateStatus()) StateStatus status,
    double? progress,
    String? localFilePath,
  }) = _FileMessageCacheState;
}
