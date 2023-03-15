import 'package:flyday_broker/features/file_manager/models/document.dart';
import 'package:flyday_broker/features/file_manager/models/section.dart';

import '../../../common/models/file_name_with_file_string_in_b64.dart';
import '../../../common/models/paginated_list.dart';

abstract class IFileManagerRepository {
  Future<PaginatedList<Section>> fetchSections({
    required int page,
    required int limit,
  });

  Future<PaginatedList<Document>> fetchDocuments({
    required int page,
    required int limit,
  });

  Future<Section> addSection({required String name});

  Future<void> addSectionDocuments({
    required int sectionId,
    required List<FileNameWithFileStringInB64> fileNameWithFileStringInB64List,
  });

  Future<Section> editSection({
    required int sectionId,
    required String name,
  });

  Future<Document> editSectionDocument({
    required int documentId,
    required String name,
  });

  Future<void> deleteSection({
    required int sectionId,
  });

  Future<void> deleteSectionDocument({
    required int documentId,
  });
}
