import 'package:dio/dio.dart';
import 'package:flyday_broker/config/constants/api_endpoints.dart';
import 'package:flyday_broker/features/file_manager/models/document.dart';
import 'package:retrofit/retrofit.dart';

import '../../../common/models/file_name_with_file_string_in_b64.dart';
import '../../../common/models/paginated_list.dart';
import '../models/section.dart';

part 'file_manager_api_client.g.dart';

@RestApi()
abstract class FileManagerApiClient {
  factory FileManagerApiClient(Dio dio) = _FileManagerApiClient;
  @GET(ApiEndPoints.kApiEndPointFMSections)
  Future<PaginatedList<Section>> fetchSections({
    @Query('page') required int page,
    @Query('limit') required int limit,
  });

  @GET(ApiEndPoints.kApiEndPointFMDocuments)
  Future<PaginatedList<Document>> fetchDocuments({
    @Query('page') required int page,
    @Query('limit') required int limit,
  });

  @POST(ApiEndPoints.kApiEndPointFileManagersSections)
  Future<Section> addSection({
    @Field() required String name,
  });

  @POST('${ApiEndPoints.kApiEndPointFileManagersSections}{sectionId}${ApiEndPoints.kApiEndPointDocumentB64}')
  Future<void> addSectionDocuments({
    @Path('sectionId') required int sectionId,
    @Field('files_base64') required List<FileNameWithFileStringInB64> fileNameWithFileStringInB64List,
  });

  @PUT('${ApiEndPoints.kApiEndPointFileManagersSections}{sectionId}/')
  Future<Section> editSection({
    @Path('sectionId') required int sectionId,
    @Field('name') required String name,
  });

  @PUT('${ApiEndPoints.kApiEndPointFileManagersDocuments}{documentId}/')
  Future<Document> editSectionDocument({
    @Path('documentId') required int documentId,
    @Field('file_name') required String name,
  });

  @DELETE('${ApiEndPoints.kApiEndPointFileManagersSections}{sectionId}/')
  Future<void> deleteSection({
    @Path('sectionId') required int sectionId,
  });

  @DELETE('${ApiEndPoints.kApiEndPointFileManagersDocuments}{documentId}/')
  Future<void> deleteSectionDocument({
    @Path('documentId') required int documentId,
  });
}
