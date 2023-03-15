import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_name_with_file_bytes.freezed.dart';

@freezed
class FileNameWithFileBytes with _$FileNameWithFileBytes {
  factory FileNameWithFileBytes({
    required String fileName,
    required Uint8List bytes,
  }) = _FileNameWithFileBytes;
}
