import 'package:bloc/bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/common/utils/extention_on_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_gallery/photo_gallery.dart';

import '../../../../common/blocs/bloc_transformers.dart';
import '../../../../common/services/media/i_media_service.dart';
import '../../../../common/utils/exceptions.dart';

part 'local_images_event.dart';
part 'local_images_state.dart';
part 'local_images_bloc.freezed.dart';

class LocalImagesBloc extends Bloc<LocalImagesEvent, LocalImagesState> {
  final IMediaService _mediaService;
  final Function(List<String> pathes) _onImagesSelected;

  LocalImagesBloc({
    required IMediaService mediaService,
    required Function(List<String> pathes) onImagesSelected,
  })  : _mediaService = mediaService,
        _onImagesSelected = onImagesSelected,
        super(const LocalImagesState()) {
    on<_Fetch>(_onFetch, transformer: throttleDroppable(const Duration(milliseconds: 400)));
    on<_Select>(_onSelect);
    on<_SendSelected>(_onSendSelected);
  }
  void _onFetch(_Fetch event, Emitter<LocalImagesState> emit) async {
    emit(state.copyWith(status: const LoadingStatus()));
    try {
      final results = await _mediaService.loadLocalImagesMediums(
          skip: event.more == true ? state.localImagesMediums.length : 0, take: 10);

      if (results != null && results.isNotEmpty) {
        emit(
          state.copyWith(
            status: const StateStatus(),
            localImagesMediums: event.more != null ? (List.of(state.localImagesMediums)..addAll(results)) : results,
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: const StateStatus(),
          ),
        );
      }
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }

  void _onSelect(_Select event, Emitter<LocalImagesState> emit) async {
    emit(state.copyWith(
        status: const StateStatus(), selectedIndexes: List.of(state.selectedIndexes)..addOrRemove(event.index)));
  }

  void _onSendSelected(_SendSelected event, Emitter<LocalImagesState> emit) async {
    if (state.selectedIndexes.isNotEmpty) {
      List<String> pathes = [];
      for (var index in state.selectedIndexes) {
        final file = await state.localImagesMediums[index].getFile();
        pathes.add(file.path);
      }
      _onImagesSelected(pathes);
    }
  }
}
