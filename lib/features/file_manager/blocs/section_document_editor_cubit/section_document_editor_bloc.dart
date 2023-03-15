import 'package:bloc/bloc.dart';
import 'package:flyday_broker/common/utils/exceptions.dart';
import 'package:flyday_broker/features/file_manager/blocs/file_manager_bloc/file_manager_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/models/state_status.dart';
import '../../repositories/i_file_manager_repository.dart';

part 'section_document_editor_state.dart';
part 'section_document_editor_event.dart';
part 'section_document_editor_bloc.freezed.dart';

class SectionDocumentEditorBloc extends Bloc<SectionDocumentEditorEvent, SectionDocumentEditorState> {
  final IFileManagerRepository _repository;
  final FileManagerBloc _fileManagerBloc;
  final Type _type;
  final int _id;
  SectionDocumentEditorBloc({
    required IFileManagerRepository repository,
    required Type type,
    int id = -1,
    required String initialValue,
    required FileManagerBloc fileManagerBloc,
  })  : _repository = repository,
        _type = type,
        _id = id,
        _fileManagerBloc = fileManagerBloc,
        super(SectionDocumentEditorState(value: initialValue)) {
    on<_SetValue>(_onSetValue);
    on<_Save>(_onSave);
  }

  void _onSetValue(_SetValue event, Emitter<SectionDocumentEditorState> emit) {
    emit(state.copyWith(status: const StateStatus(), value: event.value));
  }

  Future<void> _onSave(_Save event, Emitter<SectionDocumentEditorState> emit) async {
    if (state.value.isNotEmpty && state.status is! LoadingStatus) {
      emit(state.copyWith(status: const LoadingStatus()));
      try {
        if (_type == Type.document) {
          if (_id >= 0) {
            final document = await _repository.editSectionDocument(documentId: _id, name: state.value);
            _fileManagerBloc.add(FileManagerEvent.addDocument(document));
          }
        } else {
          if (_id >= 0) {
            final section = await _repository.editSection(sectionId: _id, name: state.value);
            _fileManagerBloc.add(FileManagerEvent.addSection(section));
          } else {
            final section = await _repository.addSection(name: state.value);
            _fileManagerBloc.add(FileManagerEvent.addSection(section));
          }
        }
        emit(state.copyWith(status: const StateStatus.success()));
      } catch (e) {
        emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
      }
    }
  }
}

enum Type {
  section,
  document,
}
