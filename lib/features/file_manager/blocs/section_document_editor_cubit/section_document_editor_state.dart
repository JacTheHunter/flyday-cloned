part of 'section_document_editor_bloc.dart';

@freezed
class SectionDocumentEditorState with _$SectionDocumentEditorState {
  const factory SectionDocumentEditorState({
    @Default(StateStatus()) StateStatus status,
    required String value,
  }) = _SectionDocumentEditorState;
}
