import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'message_file.dart';

part 'message_file_with_size.freezed.dart';

@freezed
class MessageFileWithSize with _$MessageFileWithSize {
  factory MessageFileWithSize({
    required MessageFile file,
    required Size size,
  }) = _MessageFileWithSize;
}
