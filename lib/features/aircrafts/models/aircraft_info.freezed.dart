// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'aircraft_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AircraftInfo _$AircraftInfoFromJson(Map<String, dynamic> json) {
  return _AircraftInfo.fromJson(json);
}

/// @nodoc
mixin _$AircraftInfo {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'photos', defaultValue: [])
  List<AircraftImage> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'reg_number')
  String get regNumber => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'aircraft_type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'rollout_year', defaultValue: 0)
  int get rolloutYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'registration_year', defaultValue: 0)
  int get registrationYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_seats', defaultValue: 1)
  int get seats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AircraftInfoCopyWith<AircraftInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AircraftInfoCopyWith<$Res> {
  factory $AircraftInfoCopyWith(
          AircraftInfo value, $Res Function(AircraftInfo) then) =
      _$AircraftInfoCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'photos', defaultValue: []) List<AircraftImage> images,
      @JsonKey(name: 'reg_number') String regNumber,
      String name,
      @JsonKey(name: 'aircraft_type') String? type,
      @JsonKey(name: 'rollout_year', defaultValue: 0) int rolloutYear,
      @JsonKey(name: 'registration_year', defaultValue: 0) int registrationYear,
      @JsonKey(name: 'number_of_seats', defaultValue: 1) int seats});
}

/// @nodoc
class _$AircraftInfoCopyWithImpl<$Res> implements $AircraftInfoCopyWith<$Res> {
  _$AircraftInfoCopyWithImpl(this._value, this._then);

  final AircraftInfo _value;
  // ignore: unused_field
  final $Res Function(AircraftInfo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? images = freezed,
    Object? regNumber = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? rolloutYear = freezed,
    Object? registrationYear = freezed,
    Object? seats = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<AircraftImage>,
      regNumber: regNumber == freezed
          ? _value.regNumber
          : regNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      rolloutYear: rolloutYear == freezed
          ? _value.rolloutYear
          : rolloutYear // ignore: cast_nullable_to_non_nullable
              as int,
      registrationYear: registrationYear == freezed
          ? _value.registrationYear
          : registrationYear // ignore: cast_nullable_to_non_nullable
              as int,
      seats: seats == freezed
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_AircraftInfoCopyWith<$Res>
    implements $AircraftInfoCopyWith<$Res> {
  factory _$$_AircraftInfoCopyWith(
          _$_AircraftInfo value, $Res Function(_$_AircraftInfo) then) =
      __$$_AircraftInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'photos', defaultValue: []) List<AircraftImage> images,
      @JsonKey(name: 'reg_number') String regNumber,
      String name,
      @JsonKey(name: 'aircraft_type') String? type,
      @JsonKey(name: 'rollout_year', defaultValue: 0) int rolloutYear,
      @JsonKey(name: 'registration_year', defaultValue: 0) int registrationYear,
      @JsonKey(name: 'number_of_seats', defaultValue: 1) int seats});
}

/// @nodoc
class __$$_AircraftInfoCopyWithImpl<$Res>
    extends _$AircraftInfoCopyWithImpl<$Res>
    implements _$$_AircraftInfoCopyWith<$Res> {
  __$$_AircraftInfoCopyWithImpl(
      _$_AircraftInfo _value, $Res Function(_$_AircraftInfo) _then)
      : super(_value, (v) => _then(v as _$_AircraftInfo));

  @override
  _$_AircraftInfo get _value => super._value as _$_AircraftInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? images = freezed,
    Object? regNumber = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? rolloutYear = freezed,
    Object? registrationYear = freezed,
    Object? seats = freezed,
  }) {
    return _then(_$_AircraftInfo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<AircraftImage>,
      regNumber: regNumber == freezed
          ? _value.regNumber
          : regNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      rolloutYear: rolloutYear == freezed
          ? _value.rolloutYear
          : rolloutYear // ignore: cast_nullable_to_non_nullable
              as int,
      registrationYear: registrationYear == freezed
          ? _value.registrationYear
          : registrationYear // ignore: cast_nullable_to_non_nullable
              as int,
      seats: seats == freezed
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AircraftInfo extends _AircraftInfo {
  const _$_AircraftInfo(
      {this.id,
      @JsonKey(name: 'photos', defaultValue: [])
          required final List<AircraftImage> images,
      @JsonKey(name: 'reg_number')
          required this.regNumber,
      this.name = '',
      @JsonKey(name: 'aircraft_type')
          this.type,
      @JsonKey(name: 'rollout_year', defaultValue: 0)
          required this.rolloutYear,
      @JsonKey(name: 'registration_year', defaultValue: 0)
          required this.registrationYear,
      @JsonKey(name: 'number_of_seats', defaultValue: 1)
          required this.seats})
      : _images = images,
        super._();

  factory _$_AircraftInfo.fromJson(Map<String, dynamic> json) =>
      _$$_AircraftInfoFromJson(json);

  @override
  final int? id;
  final List<AircraftImage> _images;
  @override
  @JsonKey(name: 'photos', defaultValue: [])
  List<AircraftImage> get images {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: 'reg_number')
  final String regNumber;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey(name: 'aircraft_type')
  final String? type;
  @override
  @JsonKey(name: 'rollout_year', defaultValue: 0)
  final int rolloutYear;
  @override
  @JsonKey(name: 'registration_year', defaultValue: 0)
  final int registrationYear;
  @override
  @JsonKey(name: 'number_of_seats', defaultValue: 1)
  final int seats;

  @override
  String toString() {
    return 'AircraftInfo(id: $id, images: $images, regNumber: $regNumber, name: $name, type: $type, rolloutYear: $rolloutYear, registrationYear: $registrationYear, seats: $seats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AircraftInfo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other.regNumber, regNumber) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.rolloutYear, rolloutYear) &&
            const DeepCollectionEquality()
                .equals(other.registrationYear, registrationYear) &&
            const DeepCollectionEquality().equals(other.seats, seats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(regNumber),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(rolloutYear),
      const DeepCollectionEquality().hash(registrationYear),
      const DeepCollectionEquality().hash(seats));

  @JsonKey(ignore: true)
  @override
  _$$_AircraftInfoCopyWith<_$_AircraftInfo> get copyWith =>
      __$$_AircraftInfoCopyWithImpl<_$_AircraftInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AircraftInfoToJson(
      this,
    );
  }
}

abstract class _AircraftInfo extends AircraftInfo {
  const factory _AircraftInfo(
      {final int? id,
      @JsonKey(name: 'photos', defaultValue: [])
          required final List<AircraftImage> images,
      @JsonKey(name: 'reg_number')
          required final String regNumber,
      final String name,
      @JsonKey(name: 'aircraft_type')
          final String? type,
      @JsonKey(name: 'rollout_year', defaultValue: 0)
          required final int rolloutYear,
      @JsonKey(name: 'registration_year', defaultValue: 0)
          required final int registrationYear,
      @JsonKey(name: 'number_of_seats', defaultValue: 1)
          required final int seats}) = _$_AircraftInfo;
  const _AircraftInfo._() : super._();

  factory _AircraftInfo.fromJson(Map<String, dynamic> json) =
      _$_AircraftInfo.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'photos', defaultValue: [])
  List<AircraftImage> get images;
  @override
  @JsonKey(name: 'reg_number')
  String get regNumber;
  @override
  String get name;
  @override
  @JsonKey(name: 'aircraft_type')
  String? get type;
  @override
  @JsonKey(name: 'rollout_year', defaultValue: 0)
  int get rolloutYear;
  @override
  @JsonKey(name: 'registration_year', defaultValue: 0)
  int get registrationYear;
  @override
  @JsonKey(name: 'number_of_seats', defaultValue: 1)
  int get seats;
  @override
  @JsonKey(ignore: true)
  _$$_AircraftInfoCopyWith<_$_AircraftInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
