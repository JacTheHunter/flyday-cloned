// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'unread_messages_count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnreadMessagesCount _$UnreadMessagesCountFromJson(Map<String, dynamic> json) {
  return _UnreadMessagesCount.fromJson(json);
}

/// @nodoc
mixin _$UnreadMessagesCount {
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnreadMessagesCountCopyWith<UnreadMessagesCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnreadMessagesCountCopyWith<$Res> {
  factory $UnreadMessagesCountCopyWith(
          UnreadMessagesCount value, $Res Function(UnreadMessagesCount) then) =
      _$UnreadMessagesCountCopyWithImpl<$Res>;
  $Res call({int count});
}

/// @nodoc
class _$UnreadMessagesCountCopyWithImpl<$Res>
    implements $UnreadMessagesCountCopyWith<$Res> {
  _$UnreadMessagesCountCopyWithImpl(this._value, this._then);

  final UnreadMessagesCount _value;
  // ignore: unused_field
  final $Res Function(UnreadMessagesCount) _then;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_UnreadMessagesCountCopyWith<$Res>
    implements $UnreadMessagesCountCopyWith<$Res> {
  factory _$$_UnreadMessagesCountCopyWith(_$_UnreadMessagesCount value,
          $Res Function(_$_UnreadMessagesCount) then) =
      __$$_UnreadMessagesCountCopyWithImpl<$Res>;
  @override
  $Res call({int count});
}

/// @nodoc
class __$$_UnreadMessagesCountCopyWithImpl<$Res>
    extends _$UnreadMessagesCountCopyWithImpl<$Res>
    implements _$$_UnreadMessagesCountCopyWith<$Res> {
  __$$_UnreadMessagesCountCopyWithImpl(_$_UnreadMessagesCount _value,
      $Res Function(_$_UnreadMessagesCount) _then)
      : super(_value, (v) => _then(v as _$_UnreadMessagesCount));

  @override
  _$_UnreadMessagesCount get _value => super._value as _$_UnreadMessagesCount;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_$_UnreadMessagesCount(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UnreadMessagesCount implements _UnreadMessagesCount {
  _$_UnreadMessagesCount({required this.count});

  factory _$_UnreadMessagesCount.fromJson(Map<String, dynamic> json) =>
      _$$_UnreadMessagesCountFromJson(json);

  @override
  final int count;

  @override
  String toString() {
    return 'UnreadMessagesCount(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnreadMessagesCount &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$$_UnreadMessagesCountCopyWith<_$_UnreadMessagesCount> get copyWith =>
      __$$_UnreadMessagesCountCopyWithImpl<_$_UnreadMessagesCount>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnreadMessagesCountToJson(
      this,
    );
  }
}

abstract class _UnreadMessagesCount implements UnreadMessagesCount {
  factory _UnreadMessagesCount({required final int count}) =
      _$_UnreadMessagesCount;

  factory _UnreadMessagesCount.fromJson(Map<String, dynamic> json) =
      _$_UnreadMessagesCount.fromJson;

  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_UnreadMessagesCountCopyWith<_$_UnreadMessagesCount> get copyWith =>
      throw _privateConstructorUsedError;
}
