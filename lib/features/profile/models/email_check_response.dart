import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_check_response.freezed.dart';
part 'email_check_response.g.dart';

@freezed
class EmailCheckResponse with _$EmailCheckResponse {
  factory EmailCheckResponse({
    required String email,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'can_use') required bool isAvailabe,
  }) = _EmailCheckResponse;

  factory EmailCheckResponse.fromJson(Map<String, dynamic> json) => _$EmailCheckResponseFromJson(json);
}
