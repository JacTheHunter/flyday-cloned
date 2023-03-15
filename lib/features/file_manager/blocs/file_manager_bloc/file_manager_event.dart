part of 'file_manager_bloc.dart';

@freezed
class FileManagerEvent with _$FileManagerEvent {
  const factory FileManagerEvent.fetchSections() = _FetchSections;
  const factory FileManagerEvent.fetchDocuments([bool? more]) = _FetchDocuments;
  const factory FileManagerEvent.toggleSelectionMode() = _ToggleSelectionMode;
  // const factory FileManagerEvent.startEditing() = _StartEditing;

  const factory FileManagerEvent.selectDocument(int id) = _SelectDocument;
  const factory FileManagerEvent.unselectAll() = _UnselectAllDocuments;

  const factory FileManagerEvent.addSection(Section section) = _AddSection;
  const factory FileManagerEvent.addDocument(Document document) = _AddDocument;

  const factory FileManagerEvent.deleteSection(int sectionId) = _DeleteSection;
  const factory FileManagerEvent.deleteDocument(int documentId) = _DeleteDocument;

  const factory FileManagerEvent.uploadDocuments(int sectionId, List<String> pathes) = _UploadDocuments;
  const factory FileManagerEvent.uploadDocumentsFromWeb(int sectionId, List<FileNameWithFileBytes> files) =
      _UploadDocumentsFromWeb;
}
