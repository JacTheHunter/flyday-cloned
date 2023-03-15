import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_author.freezed.dart';
part 'message_author.g.dart';

@freezed
class MessageAuthor with _$MessageAuthor {
  const MessageAuthor._();
  const factory MessageAuthor({
    @JsonKey(name: '_id', defaultValue: 0) required int id,
    @JsonKey(name: 'first_name', defaultValue: '') required String firstName,
    @JsonKey(name: 'last_name', defaultValue: '') required String lastName,
    @JsonKey(name: 'is_customer', defaultValue: false) required bool isCustomer,
  }) = _MessageAuthor;

  factory MessageAuthor.fromJson(Map<String, dynamic> json) => _$MessageAuthorFromJson(json);

  String get firstNameAndLastName => '$firstName $lastName';
}
