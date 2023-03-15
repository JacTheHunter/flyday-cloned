import 'package:flyday_broker/common/models/file_name_with_file_string_in_b64.dart';
import 'package:flyday_broker/features/file_manager/data_sources/file_manager_api_client.dart';
import 'package:flyday_broker/features/file_manager/models/document.dart';
import 'package:flyday_broker/features/file_manager/models/section.dart';

import '../../../common/models/paginated_list.dart';
import '../../../common/utils/exceptions.dart';
import 'i_file_manager_repository.dart';

class FileManagerRepository implements IFileManagerRepository {
  final FileManagerApiClient _apiClient;

  FileManagerRepository({required FileManagerApiClient apiClient}) : _apiClient = apiClient;
  @override
  Future<PaginatedList<Section>> fetchSections({required int page, required int limit}) async {
    try {
      return await _apiClient.fetchSections(limit: limit, page: page);
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<PaginatedList<Document>> fetchDocuments({required int page, required int limit}) async {
    try {
      return await _apiClient.fetchDocuments(
        page: page,
        limit: limit,
      );
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<Section> addSection({required String name}) async {
    try {
      return await _apiClient.addSection(name: name);
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<void> addSectionDocuments(
      {required int sectionId, required List<FileNameWithFileStringInB64> fileNameWithFileStringInB64List}) async {
    try {
      return await _apiClient.addSectionDocuments(
        sectionId: sectionId,
        fileNameWithFileStringInB64List: fileNameWithFileStringInB64List,
      );
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<Section> editSection({required int sectionId, required String name}) async {
    try {
      return await _apiClient.editSection(name: name, sectionId: sectionId);
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<Document> editSectionDocument({required int documentId, required String name}) async {
    try {
      return await _apiClient.editSectionDocument(name: name, documentId: documentId);
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<void> deleteSection({required int sectionId}) async {
    try {
      return await _apiClient.deleteSection(sectionId: sectionId);
    } catch (e) {
      throw onApiException(e);
    }
  }

  @override
  Future<void> deleteSectionDocument({required int documentId}) async {
    try {
      return await _apiClient.deleteSectionDocument(documentId: documentId);
    } catch (e) {
      throw onApiException(e);
    }
  }
}
