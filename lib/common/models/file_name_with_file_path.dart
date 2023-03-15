import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_name_with_file_path.freezed.dart';
part 'file_name_with_file_path.g.dart';

@freezed
class FileNameWithFilePath with _$FileNameWithFilePath {
  factory FileNameWithFilePath({
    @JsonKey(name: 'file_name') required String fileName,
    @JsonKey(name: 'url') required String filePath,
  }) = _FileNameWithFilePath;

  factory FileNameWithFilePath.fromJson(Map<String, dynamic> json) => _$FileNameWithFilePathFromJson(json);
}
