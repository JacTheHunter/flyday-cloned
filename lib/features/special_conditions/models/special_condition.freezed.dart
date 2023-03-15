// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'special_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpecialCondition _$SpecialConditionFromJson(Map<String, dynamic> json) {
  return _SpecialCondition.fromJson(json);
}

/// @nodoc
mixin _$SpecialCondition {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialConditionCopyWith<SpecialCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialConditionCopyWith<$Res> {
  factory $SpecialConditionCopyWith(
          SpecialCondition value, $Res Function(SpecialCondition) then) =
      _$SpecialConditionCopyWithImpl<$Res>;
  $Res call({int id, String name, String icon});
}

/// @nodoc
class _$SpecialConditionCopyWithImpl<$Res>
    implements $SpecialConditionCopyWith<$Res> {
  _$SpecialConditionCopyWithImpl(this._value, this._then);

  final SpecialCondition _value;
  // ignore: unused_field
  final $Res Function(SpecialCondition) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SpecialConditionCopyWith<$Res>
    implements $SpecialConditionCopyWith<$Res> {
  factory _$$_SpecialConditionCopyWith(
          _$_SpecialCondition value, $Res Function(_$_SpecialCondition) then) =
      __$$_SpecialConditionCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String icon});
}

/// @nodoc
class __$$_SpecialConditionCopyWithImpl<$Res>
    extends _$SpecialConditionCopyWithImpl<$Res>
    implements _$$_SpecialConditionCopyWith<$Res> {
  __$$_SpecialConditionCopyWithImpl(
      _$_SpecialCondition _value, $Res Function(_$_SpecialCondition) _then)
      : super(_value, (v) => _then(v as _$_SpecialCondition));

  @override
  _$_SpecialCondition get _value => super._value as _$_SpecialCondition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$_SpecialCondition(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpecialCondition implements _SpecialCondition {
  _$_SpecialCondition(
      {required this.id, required this.name, required this.icon});

  factory _$_SpecialCondition.fromJson(Map<String, dynamic> json) =>
      _$$_SpecialConditionFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String icon;

  @override
  String toString() {
    return 'SpecialCondition(id: $id, name: $name, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpecialCondition &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.icon, icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(icon));

  @JsonKey(ignore: true)
  @override
  _$$_SpecialConditionCopyWith<_$_SpecialCondition> get copyWith =>
      __$$_SpecialConditionCopyWithImpl<_$_SpecialCondition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpecialConditionToJson(
      this,
    );
  }
}

abstract class _SpecialCondition implements SpecialCondition {
  factory _SpecialCondition(
      {required final int id,
      required final String name,
      required final String icon}) = _$_SpecialCondition;

  factory _SpecialCondition.fromJson(Map<String, dynamic> json) =
      _$_SpecialCondition.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$_SpecialConditionCopyWith<_$_SpecialCondition> get copyWith =>
      throw _privateConstructorUsedError;
}
