import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_name_with_file_string_in_b64.freezed.dart';
part 'file_name_with_file_string_in_b64.g.dart';

@freezed
class FileNameWithFileStringInB64 with _$FileNameWithFileStringInB64 {
  const factory FileNameWithFileStringInB64({
    @JsonKey(name: 'file_name') required String fileName,
    @JsonKey(name: 'file') required String fileStringInB64,
  }) = _FileNameWithFileStringInB64;

  factory FileNameWithFileStringInB64.fromJson(Map<String, dynamic> json) =>
      _$FileNameWithFileStringInB64FromJson(json);
}
