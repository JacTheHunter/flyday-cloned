import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_status_message.freezed.dart';
part 'error_status_message.g.dart';

@freezed
class ErrorStatusMessage with _$ErrorStatusMessage {
  factory ErrorStatusMessage({
    String? text,
    @Default(false) showPopUp,
  }) = _ErrorStatusMessage;

  factory ErrorStatusMessage.fromJson(Map<String, dynamic> json) => _$ErrorStatusMessageFromJson(json);
}
