import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/common/utils/extention_on_list.dart';
import 'package:flyday_broker/features/file_manager/models/document.dart';
import 'package:flyday_broker/features/file_manager/models/section_with_documents.dart';
import 'package:flyday_broker/features/file_manager/repositories/i_file_manager_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/blocs/bloc_transformers.dart';
import '../../../../common/models/file_name_with_file_bytes.dart';
import '../../../../common/utils/exceptions.dart';
import '../../../../common/utils/file_bytes_to_base64.dart';
import '../../models/section.dart';

part 'file_manager_event.dart';
part 'file_manager_state.dart';
part 'file_manager_bloc.freezed.dart';

class FileManagerBloc extends Bloc<FileManagerEvent, FileManagerState> {
  final IFileManagerRepository _repository;

  FileManagerBloc({required IFileManagerRepository repository, required bool isSelectionModeAvailable})
      : _repository = repository,
        super(
          FileManagerState(
            isSelectionModeAvailable: isSelectionModeAvailable,
            selectionMode: isSelectionModeAvailable,
          ),
        ) {
    on<_FetchSections>(_onFetchSections);
    on<_FetchDocuments>(_onFetchDocuments, transformer: throttleDroppable(const Duration(milliseconds: 400)));
    on<_SelectDocument>(_onSelectDocument);
    on<_UnselectAllDocuments>(_onUnselectAllDocuments);
    on<_ToggleSelectionMode>(_onToggleSelectionMode);
    on<_AddDocument>(_onAddDocument);
    on<_AddSection>(_onAddSection);
    on<_DeleteDocument>(_onDeleteDocument);
    on<_DeleteSection>(_onDeleteSection);
    on<_UploadDocuments>(_onUploadDocuments);
    on<_UploadDocumentsFromWeb>(_onUploadDocumentsFromWeb);
  }

  int _page = 1;
  int _totalPages = 1;

  void _onFetchSections(_FetchSections event, Emitter<FileManagerState> emit) async {
    _page = 1;
    _totalPages = 1;
    emit(state.copyWith(status: const LoadingStatus()));
    try {
      final sections = await _repository.fetchSections(limit: 1000, page: 1);
      final documents = await _repository.fetchDocuments(limit: 20, page: _page);

      emit(
        state.copyWith(
          status: const StateStatus(),
          sections: sections.results,
          documents: documents.results,
        ),
      );

      _totalPages = documents.totalPages;
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }

  void _onFetchDocuments(_FetchDocuments event, Emitter<FileManagerState> emit) async {
    if (event.more == true) {
      if (_page >= _totalPages) {
        return;
      } else {
        _page++;
      }
    } else {
      _page = 1;
    }
    emit(state.copyWith(status: const LoadingStatus()));
    try {
      final result = await _repository.fetchDocuments(limit: 20, page: _page);

      emit(
        state.copyWith(
          status: const StateStatus(),
          documents: event.more != null ? (List.of(state.documents)..addAll(result.results)) : result.results,
        ),
      );

      _totalPages = result.totalPages;
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }

  void _onSelectDocument(_SelectDocument event, Emitter<FileManagerState> emit) {
    emit(
      state.copyWith(
        selectedDocumentsIds: List.of(state.selectedDocumentsIds)..addOrRemove(event.id),
        status: const StateStatus(),
      ),
    );
  }

  void _onToggleSelectionMode(_ToggleSelectionMode event, Emitter<FileManagerState> emit) {
    emit(
      state.copyWith(
        selectionMode: !state.selectionMode,
        status: const StateStatus(),
      ),
    );
  }

  void _onAddSection(_AddSection event, Emitter<FileManagerState> emit) {
    final index = state.sections.indexWhere((element) => element.id == event.section.id);
    if (index >= 0) {
      emit(
        state.copyWith(
          sections: List.of(state.sections)
            ..removeAt(index)
            ..insert(index, event.section),
          status: const StateStatus(),
        ),
      );
    } else {
      emit(
        state.copyWith(
          sections: List.of(state.sections)..add(event.section),
          status: const StateStatus(),
        ),
      );
    }
  }

  void _onAddDocument(_AddDocument event, Emitter<FileManagerState> emit) {
    final index = state.documents.indexWhere((element) => element.id == event.document.id);
    if (index >= 0) {
      emit(
        state.copyWith(
          documents: List.of(state.documents)
            ..removeAt(index)
            ..insert(index, event.document),
          status: const StateStatus(),
        ),
      );
    } else {
      emit(
        state.copyWith(
          documents: List.of(state.documents)
            ..add(event.document)
            ..sort(
              (a, b) => a.sectionId.compareTo(b.sectionId),
            ),
          status: const StateStatus(),
        ),
      );
    }
  }

  void _onDeleteSection(_DeleteSection event, Emitter<FileManagerState> emit) {
    final index = state.sections.indexWhere((element) => element.id == event.sectionId);
    emit(
      state.copyWith(
        sections: List.of(state.sections)..removeAt(index),
        status: const StateStatus(),
      ),
    );
    _repository.deleteSection(sectionId: event.sectionId);
  }

  void _onDeleteDocument(_DeleteDocument event, Emitter<FileManagerState> emit) {
    final index = state.documents.indexWhere((element) => element.id == event.documentId);
    emit(
      state.copyWith(
        documents: List.of(state.documents)..removeAt(index),
        status: const StateStatus(),
      ),
    );
    _repository.deleteSectionDocument(documentId: event.documentId);
  }

  void _onUploadDocuments(_UploadDocuments event, Emitter<FileManagerState> emit) async {
    emit(state.copyWith(status: const LoadingStatus()));
    try {
      await _repository.addSectionDocuments(
        sectionId: event.sectionId,
        fileNameWithFileStringInB64List: await filePathsListToFileNameWithFileStringInB64List(event.pathes),
      );
      final documents =
          await _repository.fetchDocuments(page: 1, limit: max(state.documents.length + event.pathes.length, 10));
      emit(state.copyWith(status: const StateStatus(), documents: documents.results));
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }

  void _onUploadDocumentsFromWeb(_UploadDocumentsFromWeb event, Emitter<FileManagerState> emit) async {
    emit(state.copyWith(status: const LoadingStatus()));
    try {
      await _repository.addSectionDocuments(
        sectionId: event.sectionId,
        fileNameWithFileStringInB64List: fileNamesWithBytesToFileNameWithFileStringInB64List(event.files),
      );
      final documents =
          await _repository.fetchDocuments(page: 1, limit: max(state.documents.length + event.files.length, 10));
      emit(state.copyWith(status: const StateStatus(), documents: documents.results));
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }

  void _onUnselectAllDocuments(_UnselectAllDocuments event, Emitter<FileManagerState> emit) async {
    emit(state.copyWith(status: const StateStatus(), selectedDocumentsIds: []));
  }
}
