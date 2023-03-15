// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  int get id => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  Country get country => throw _privateConstructorUsedError;
  City get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name', defaultValue: '')
  String get companyName => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;
  @JsonKey(name: 'zip_code', defaultValue: '')
  String get zipCode => throw _privateConstructorUsedError;
  String get telegram => throw _privateConstructorUsedError;
  String get whatsapp => throw _privateConstructorUsedError;
  String get messenger => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_is_verified', defaultValue: false)
  bool get emailIsVerified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call(
      {int id,
      User user,
      Country country,
      City city,
      @JsonKey(name: 'company_name', defaultValue: '')
          String companyName,
      String? logo,
      String description,
      String website,
      @JsonKey(name: 'zip_code', defaultValue: '')
          String zipCode,
      String telegram,
      String whatsapp,
      String messenger,
      @JsonKey(name: 'email_is_verified', defaultValue: false)
          bool emailIsVerified});

  $UserCopyWith<$Res> get user;
  $CountryCopyWith<$Res> get country;
  $CityCopyWith<$Res> get city;
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  final Profile _value;
  // ignore: unused_field
  final $Res Function(Profile) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? companyName = freezed,
    Object? logo = freezed,
    Object? description = freezed,
    Object? website = freezed,
    Object? zipCode = freezed,
    Object? telegram = freezed,
    Object? whatsapp = freezed,
    Object? messenger = freezed,
    Object? emailIsVerified = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: zipCode == freezed
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      telegram: telegram == freezed
          ? _value.telegram
          : telegram // ignore: cast_nullable_to_non_nullable
              as String,
      whatsapp: whatsapp == freezed
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String,
      messenger: messenger == freezed
          ? _value.messenger
          : messenger // ignore: cast_nullable_to_non_nullable
              as String,
      emailIsVerified: emailIsVerified == freezed
          ? _value.emailIsVerified
          : emailIsVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $CountryCopyWith<$Res> get country {
    return $CountryCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value));
    });
  }

  @override
  $CityCopyWith<$Res> get city {
    return $CityCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$_ProfileCopyWith(
          _$_Profile value, $Res Function(_$_Profile) then) =
      __$$_ProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      User user,
      Country country,
      City city,
      @JsonKey(name: 'company_name', defaultValue: '')
          String companyName,
      String? logo,
      String description,
      String website,
      @JsonKey(name: 'zip_code', defaultValue: '')
          String zipCode,
      String telegram,
      String whatsapp,
      String messenger,
      @JsonKey(name: 'email_is_verified', defaultValue: false)
          bool emailIsVerified});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $CountryCopyWith<$Res> get country;
  @override
  $CityCopyWith<$Res> get city;
}

/// @nodoc
class __$$_ProfileCopyWithImpl<$Res> extends _$ProfileCopyWithImpl<$Res>
    implements _$$_ProfileCopyWith<$Res> {
  __$$_ProfileCopyWithImpl(_$_Profile _value, $Res Function(_$_Profile) _then)
      : super(_value, (v) => _then(v as _$_Profile));

  @override
  _$_Profile get _value => super._value as _$_Profile;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? companyName = freezed,
    Object? logo = freezed,
    Object? description = freezed,
    Object? website = freezed,
    Object? zipCode = freezed,
    Object? telegram = freezed,
    Object? whatsapp = freezed,
    Object? messenger = freezed,
    Object? emailIsVerified = freezed,
  }) {
    return _then(_$_Profile(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: zipCode == freezed
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      telegram: telegram == freezed
          ? _value.telegram
          : telegram // ignore: cast_nullable_to_non_nullable
              as String,
      whatsapp: whatsapp == freezed
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String,
      messenger: messenger == freezed
          ? _value.messenger
          : messenger // ignore: cast_nullable_to_non_nullable
              as String,
      emailIsVerified: emailIsVerified == freezed
          ? _value.emailIsVerified
          : emailIsVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Profile implements _Profile {
  const _$_Profile(
      {required this.id,
      required this.user,
      required this.country,
      required this.city,
      @JsonKey(name: 'company_name', defaultValue: '')
          required this.companyName,
      this.logo,
      this.description = 'description',
      this.website = 'website',
      @JsonKey(name: 'zip_code', defaultValue: '')
          required this.zipCode,
      this.telegram = 'telegram',
      this.whatsapp = 'whatsapp',
      this.messenger = 'messenger',
      @JsonKey(name: 'email_is_verified', defaultValue: false)
          required this.emailIsVerified});

  factory _$_Profile.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileFromJson(json);

  @override
  final int id;
  @override
  final User user;
  @override
  final Country country;
  @override
  final City city;
  @override
  @JsonKey(name: 'company_name', defaultValue: '')
  final String companyName;
  @override
  final String? logo;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String website;
  @override
  @JsonKey(name: 'zip_code', defaultValue: '')
  final String zipCode;
  @override
  @JsonKey()
  final String telegram;
  @override
  @JsonKey()
  final String whatsapp;
  @override
  @JsonKey()
  final String messenger;
  @override
  @JsonKey(name: 'email_is_verified', defaultValue: false)
  final bool emailIsVerified;

  @override
  String toString() {
    return 'Profile(id: $id, user: $user, country: $country, city: $city, companyName: $companyName, logo: $logo, description: $description, website: $website, zipCode: $zipCode, telegram: $telegram, whatsapp: $whatsapp, messenger: $messenger, emailIsVerified: $emailIsVerified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Profile &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.companyName, companyName) &&
            const DeepCollectionEquality().equals(other.logo, logo) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.website, website) &&
            const DeepCollectionEquality().equals(other.zipCode, zipCode) &&
            const DeepCollectionEquality().equals(other.telegram, telegram) &&
            const DeepCollectionEquality().equals(other.whatsapp, whatsapp) &&
            const DeepCollectionEquality().equals(other.messenger, messenger) &&
            const DeepCollectionEquality()
                .equals(other.emailIsVerified, emailIsVerified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(companyName),
      const DeepCollectionEquality().hash(logo),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(website),
      const DeepCollectionEquality().hash(zipCode),
      const DeepCollectionEquality().hash(telegram),
      const DeepCollectionEquality().hash(whatsapp),
      const DeepCollectionEquality().hash(messenger),
      const DeepCollectionEquality().hash(emailIsVerified));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      __$$_ProfileCopyWithImpl<_$_Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileToJson(
      this,
    );
  }
}

abstract class _Profile implements Profile {
  const factory _Profile(
      {required final int id,
      required final User user,
      required final Country country,
      required final City city,
      @JsonKey(name: 'company_name', defaultValue: '')
          required final String companyName,
      final String? logo,
      final String description,
      final String website,
      @JsonKey(name: 'zip_code', defaultValue: '')
          required final String zipCode,
      final String telegram,
      final String whatsapp,
      final String messenger,
      @JsonKey(name: 'email_is_verified', defaultValue: false)
          required final bool emailIsVerified}) = _$_Profile;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$_Profile.fromJson;

  @override
  int get id;
  @override
  User get user;
  @override
  Country get country;
  @override
  City get city;
  @override
  @JsonKey(name: 'company_name', defaultValue: '')
  String get companyName;
  @override
  String? get logo;
  @override
  String get description;
  @override
  String get website;
  @override
  @JsonKey(name: 'zip_code', defaultValue: '')
  String get zipCode;
  @override
  String get telegram;
  @override
  String get whatsapp;
  @override
  String get messenger;
  @override
  @JsonKey(name: 'email_is_verified', defaultValue: false)
  bool get emailIsVerified;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}
