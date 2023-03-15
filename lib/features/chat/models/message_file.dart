import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_file.freezed.dart';
part 'message_file.g.dart';

@freezed
class MessageFile with _$MessageFile {
  const MessageFile._();
  const factory MessageFile({
    @JsonKey(name: 'file') required String path,
    @JsonKey(name: 'file_name', defaultValue: '') required String name,
    @JsonKey(name: 'file_type', defaultValue: '') required String type,
    @JsonKey(name: 'file_size', defaultValue: '') required String size,
  }) = _MessageFile;

  factory MessageFile.fromJson(Map<String, dynamic> json) => _$MessageFileFromJson(json);

  String get extention => path.split('.').last.toUpperCase();
}
