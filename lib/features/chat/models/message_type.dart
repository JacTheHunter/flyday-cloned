import 'package:freezed_annotation/freezed_annotation.dart';

enum MessageType {
  @JsonValue(0)
  offer,
  @JsonValue(1)
  text,
  @JsonValue(2)
  image,
  @JsonValue(3)
  file,
  @JsonValue(4)
  document
}

// 0 - offer
// 1 - text
// 2 - photos
// 3 - files
// 4 - documents
