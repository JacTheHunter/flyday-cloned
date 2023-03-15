part of 'file_message_cache_bloc.dart';

@freezed
class FileMessageCacheEvent with _$FileMessageCacheEvent {
  const factory FileMessageCacheEvent.start() = _Start;
  const factory FileMessageCacheEvent.cache() = _Cache;
  const factory FileMessageCacheEvent.loading(DownloadProgress downloadProgress) = _Loading;
  const factory FileMessageCacheEvent.ready(FileInfo fileInfo) = _Ready;
}
