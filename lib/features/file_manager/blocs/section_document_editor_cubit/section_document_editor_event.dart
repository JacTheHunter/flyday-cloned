part of 'section_document_editor_bloc.dart';

@freezed
class SectionDocumentEditorEvent with _$SectionDocumentEditorEvent {
  const factory SectionDocumentEditorEvent.setValue(String value) = _SetValue;
  const factory SectionDocumentEditorEvent.save() = _Save;
}
