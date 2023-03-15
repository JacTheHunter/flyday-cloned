// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'aircraft_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AircraftType _$AircraftTypeFromJson(Map<String, dynamic> json) {
  return _AircraftType.fromJson(json);
}

/// @nodoc
mixin _$AircraftType {
  @JsonKey(name: 'type_name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AircraftTypeCopyWith<AircraftType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AircraftTypeCopyWith<$Res> {
  factory $AircraftTypeCopyWith(
          AircraftType value, $Res Function(AircraftType) then) =
      _$AircraftTypeCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'type_name') String name});
}

/// @nodoc
class _$AircraftTypeCopyWithImpl<$Res> implements $AircraftTypeCopyWith<$Res> {
  _$AircraftTypeCopyWithImpl(this._value, this._then);

  final AircraftType _value;
  // ignore: unused_field
  final $Res Function(AircraftType) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AircraftTypeCopyWith<$Res>
    implements $AircraftTypeCopyWith<$Res> {
  factory _$$_AircraftTypeCopyWith(
          _$_AircraftType value, $Res Function(_$_AircraftType) then) =
      __$$_AircraftTypeCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'type_name') String name});
}

/// @nodoc
class __$$_AircraftTypeCopyWithImpl<$Res>
    extends _$AircraftTypeCopyWithImpl<$Res>
    implements _$$_AircraftTypeCopyWith<$Res> {
  __$$_AircraftTypeCopyWithImpl(
      _$_AircraftType _value, $Res Function(_$_AircraftType) _then)
      : super(_value, (v) => _then(v as _$_AircraftType));

  @override
  _$_AircraftType get _value => super._value as _$_AircraftType;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_AircraftType(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AircraftType implements _AircraftType {
  _$_AircraftType({@JsonKey(name: 'type_name') required this.name});

  factory _$_AircraftType.fromJson(Map<String, dynamic> json) =>
      _$$_AircraftTypeFromJson(json);

  @override
  @JsonKey(name: 'type_name')
  final String name;

  @override
  String toString() {
    return 'AircraftType(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AircraftType &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_AircraftTypeCopyWith<_$_AircraftType> get copyWith =>
      __$$_AircraftTypeCopyWithImpl<_$_AircraftType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AircraftTypeToJson(
      this,
    );
  }
}

abstract class _AircraftType implements AircraftType {
  factory _AircraftType(
          {@JsonKey(name: 'type_name') required final String name}) =
      _$_AircraftType;

  factory _AircraftType.fromJson(Map<String, dynamic> json) =
      _$_AircraftType.fromJson;

  @override
  @JsonKey(name: 'type_name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_AircraftTypeCopyWith<_$_AircraftType> get copyWith =>
      throw _privateConstructorUsedError;
}
