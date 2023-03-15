import 'package:flyday_broker/features/file_manager/models/section.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'document.dart';

part 'section_with_documents.freezed.dart';
part 'section_with_documents.g.dart';

@freezed
class SectionWithDocuments with _$SectionWithDocuments {
  factory SectionWithDocuments({
    required Section section,
    @Default([]) List<Document> documents,
  }) = _SectionWithDocuments;

  factory SectionWithDocuments.fromJson(Map<String, dynamic> json) => _$SectionWithDocumentsFromJson(json);
}
