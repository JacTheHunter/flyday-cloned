import 'package:freezed_annotation/freezed_annotation.dart';

part 'document.freezed.dart';
part 'document.g.dart';

@freezed
class Document with _$Document {
  factory Document({
    required int id,
    @JsonKey(name: 'section') required int sectionId,
    @JsonKey(name: 'file') required String filePath,
    @JsonKey(name: 'file_name') required String fileName,
    @JsonKey(name: 'file_size') required String fileSize,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _Document;

  factory Document.fromJson(Map<String, dynamic> json) => _$DocumentFromJson(json);
}
