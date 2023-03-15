// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'latlngtype.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LatLngType {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  Type? get type => throw _privateConstructorUsedError;
  bool? get isCenterRight => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LatLngTypeCopyWith<LatLngType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatLngTypeCopyWith<$Res> {
  factory $LatLngTypeCopyWith(
          LatLngType value, $Res Function(LatLngType) then) =
      _$LatLngTypeCopyWithImpl<$Res>;
  $Res call(
      {double latitude, double longitude, Type? type, bool? isCenterRight});
}

/// @nodoc
class _$LatLngTypeCopyWithImpl<$Res> implements $LatLngTypeCopyWith<$Res> {
  _$LatLngTypeCopyWithImpl(this._value, this._then);

  final LatLngType _value;
  // ignore: unused_field
  final $Res Function(LatLngType) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? type = freezed,
    Object? isCenterRight = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type?,
      isCenterRight: isCenterRight == freezed
          ? _value.isCenterRight
          : isCenterRight // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_LatLngTypeCopyWith<$Res>
    implements $LatLngTypeCopyWith<$Res> {
  factory _$$_LatLngTypeCopyWith(
          _$_LatLngType value, $Res Function(_$_LatLngType) then) =
      __$$_LatLngTypeCopyWithImpl<$Res>;
  @override
  $Res call(
      {double latitude, double longitude, Type? type, bool? isCenterRight});
}

/// @nodoc
class __$$_LatLngTypeCopyWithImpl<$Res> extends _$LatLngTypeCopyWithImpl<$Res>
    implements _$$_LatLngTypeCopyWith<$Res> {
  __$$_LatLngTypeCopyWithImpl(
      _$_LatLngType _value, $Res Function(_$_LatLngType) _then)
      : super(_value, (v) => _then(v as _$_LatLngType));

  @override
  _$_LatLngType get _value => super._value as _$_LatLngType;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? type = freezed,
    Object? isCenterRight = freezed,
  }) {
    return _then(_$_LatLngType(
      latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type?,
      isCenterRight == freezed
          ? _value.isCenterRight
          : isCenterRight // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_LatLngType implements _LatLngType {
  const _$_LatLngType(this.latitude, this.longitude,
      [this.type, this.isCenterRight]);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final Type? type;
  @override
  final bool? isCenterRight;

  @override
  String toString() {
    return 'LatLngType(latitude: $latitude, longitude: $longitude, type: $type, isCenterRight: $isCenterRight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LatLngType &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.isCenterRight, isCenterRight));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(isCenterRight));

  @JsonKey(ignore: true)
  @override
  _$$_LatLngTypeCopyWith<_$_LatLngType> get copyWith =>
      __$$_LatLngTypeCopyWithImpl<_$_LatLngType>(this, _$identity);
}

abstract class _LatLngType implements LatLngType {
  const factory _LatLngType(final double latitude, final double longitude,
      [final Type? type, final bool? isCenterRight]) = _$_LatLngType;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  Type? get type;
  @override
  bool? get isCenterRight;
  @override
  @JsonKey(ignore: true)
  _$$_LatLngTypeCopyWith<_$_LatLngType> get copyWith =>
      throw _privateConstructorUsedError;
}
