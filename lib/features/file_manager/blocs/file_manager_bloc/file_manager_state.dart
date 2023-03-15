part of 'file_manager_bloc.dart';

@freezed
class FileManagerState with _$FileManagerState {
  const FileManagerState._();
  const factory FileManagerState({
    @Default(StateStatus()) StateStatus status,
    @Default([]) List<Section> sections,
    @Default([]) List<Document> documents,
    @Default([]) List<int> selectedDocumentsIds,
    required bool selectionMode,
    required bool isSelectionModeAvailable,
  }) = _FileManagerState;

  List<SectionWithDocuments> get sectionsWithDocuments => sections
      .map(
        (s) => SectionWithDocuments(
          section: s,
          documents: documents
              .where(
                (element) => element.sectionId == s.id,
              )
              .toList(),
        ),
      )
      .toList();
}
