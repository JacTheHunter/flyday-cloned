import 'package:flyday_broker/features/countries_cities/models/city.dart';
import 'package:flyday_broker/features/countries_cities/models/country.dart';
import 'package:flyday_broker/features/profile/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    required int id,
    required User user,
    required Country country,
    required City city,
    @JsonKey(name: 'company_name', defaultValue: '') required String companyName,
    String? logo,
    @Default('description') String description,
    @Default('website') String website,
    @JsonKey(name: 'zip_code', defaultValue: '') required String zipCode,
    @Default('telegram') String telegram,
    @Default('whatsapp') String whatsapp,
    @Default('messenger') String messenger,
    @JsonKey(name: 'email_is_verified', defaultValue: false) required bool emailIsVerified,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);
}
