import 'package:flyday_broker/features/currencies/models/currency.dart';
import 'package:flyday_broker/features/profile/models/language.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required int id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
    @Default('') String phone,
    required Currency currency,
    required Language language,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  String get fullName => '$firstName $lastName';
  String get initials =>
      (firstName.isNotEmpty ? firstName[0].toUpperCase() : '') + (lastName.isNotEmpty ? lastName[0].toUpperCase() : '');
}
