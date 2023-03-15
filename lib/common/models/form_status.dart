import 'package:freezed_annotation/freezed_annotation.dart';

enum FormStatus {
  @JsonValue('pure')
  pure,
  @JsonValue('dirty')
  dirty,
  @JsonValue('valid')
  valid,
}
