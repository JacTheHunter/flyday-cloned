import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/models/error_status_message.dart';

part 'file_message_cache_event.dart';
part 'file_message_cache_state.dart';
part 'file_message_cache_bloc.freezed.dart';

class FileMessageCacheBloc extends Bloc<FileMessageCacheEvent, FileMessageCacheState> {
  final String _path;
  FileMessageCacheBloc({
    required String path,
  })  : _path = path,
        super(const FileMessageCacheState()) {
    on<_Cache>(_onCache);
    on<_Start>(_onStart);
    on<_Loading>(_onLoading);
    on<_Ready>(_onReady);
  }

  StreamSubscription<FileResponse>? _onFileResponse;

  void _onStart(_Start event, Emitter<FileMessageCacheState> emit) async {
    emit(state.copyWith(status: const LoadingStatus()));

    try {
      if (kIsWeb) {
        emit(state.copyWith(localFilePath: _path, status: const StateStatus()));
      } else {
        final fileInfo = await DefaultCacheManager().getFileFromCache(_path);
        emit(state.copyWith(localFilePath: fileInfo?.file.path, status: const StateStatus()));
      }
    } catch (e) {
      emit(state.copyWith(status: ErrorStatus(ErrorStatusMessage(text: e.toString()))));
    }
  }

  void _onCache(_Cache event, Emitter<FileMessageCacheState> emit) {
    try {
      emit(state.copyWith(status: const LoadingStatus()));
      _onFileResponse = DefaultCacheManager().getFileStream(_path, withProgress: true).listen(
        (fileResponse) {
          if (fileResponse is FileInfo) {
            add(FileMessageCacheEvent.ready(fileResponse));
          } else if (fileResponse is DownloadProgress) {
            add(FileMessageCacheEvent.loading(fileResponse));
          }
        },
        onError: (e) {
          emit(state.copyWith(status: ErrorStatus(ErrorStatusMessage(text: e.toString()))));
        },
      );
    } catch (e) {
      emit(state.copyWith(status: ErrorStatus(ErrorStatusMessage(text: e.toString()))));
    }
  }

  void _onLoading(_Loading event, Emitter<FileMessageCacheState> emit) async {
    emit(state.copyWith(status: const LoadingStatus(), progress: event.downloadProgress.progress));
  }

  void _onReady(_Ready event, Emitter<FileMessageCacheState> emit) async {
    emit(state.copyWith(status: const StateStatus.success(), progress: 0, localFilePath: event.fileInfo.file.path));
  }

  @override
  Future<void> close() {
    _onFileResponse?.cancel();
    return super.close();
  }
}
