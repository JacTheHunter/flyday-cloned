import 'package:freezed_annotation/freezed_annotation.dart';

enum AdType {
  @JsonValue('estimation')
  estimation,
  @JsonValue('live_quote')
  liveQuote,
}
