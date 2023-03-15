// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repository_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RepositoryException {
  String get message => throw _privateConstructorUsedError;
  bool get showPopUp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepositoryExceptionCopyWith<RepositoryException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryExceptionCopyWith<$Res> {
  factory $RepositoryExceptionCopyWith(
          RepositoryException value, $Res Function(RepositoryException) then) =
      _$RepositoryExceptionCopyWithImpl<$Res>;
  $Res call({String message, bool showPopUp});
}

/// @nodoc
class _$RepositoryExceptionCopyWithImpl<$Res>
    implements $RepositoryExceptionCopyWith<$Res> {
  _$RepositoryExceptionCopyWithImpl(this._value, this._then);

  final RepositoryException _value;
  // ignore: unused_field
  final $Res Function(RepositoryException) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? showPopUp = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      showPopUp: showPopUp == freezed
          ? _value.showPopUp
          : showPopUp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_RepositoryExceptionCopyWith<$Res>
    implements $RepositoryExceptionCopyWith<$Res> {
  factory _$$_RepositoryExceptionCopyWith(_$_RepositoryException value,
          $Res Function(_$_RepositoryException) then) =
      __$$_RepositoryExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String message, bool showPopUp});
}

/// @nodoc
class __$$_RepositoryExceptionCopyWithImpl<$Res>
    extends _$RepositoryExceptionCopyWithImpl<$Res>
    implements _$$_RepositoryExceptionCopyWith<$Res> {
  __$$_RepositoryExceptionCopyWithImpl(_$_RepositoryException _value,
      $Res Function(_$_RepositoryException) _then)
      : super(_value, (v) => _then(v as _$_RepositoryException));

  @override
  _$_RepositoryException get _value => super._value as _$_RepositoryException;

  @override
  $Res call({
    Object? message = freezed,
    Object? showPopUp = freezed,
  }) {
    return _then(_$_RepositoryException(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      showPopUp: showPopUp == freezed
          ? _value.showPopUp
          : showPopUp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RepositoryException implements _RepositoryException {
  const _$_RepositoryException({required this.message, this.showPopUp = false});

  @override
  final String message;
  @override
  @JsonKey()
  final bool showPopUp;

  @override
  String toString() {
    return 'RepositoryException(message: $message, showPopUp: $showPopUp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepositoryException &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.showPopUp, showPopUp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(showPopUp));

  @JsonKey(ignore: true)
  @override
  _$$_RepositoryExceptionCopyWith<_$_RepositoryException> get copyWith =>
      __$$_RepositoryExceptionCopyWithImpl<_$_RepositoryException>(
          this, _$identity);
}

abstract class _RepositoryException implements RepositoryException {
  const factory _RepositoryException(
      {required final String message,
      final bool showPopUp}) = _$_RepositoryException;

  @override
  String get message;
  @override
  bool get showPopUp;
  @override
  @JsonKey(ignore: true)
  _$$_RepositoryExceptionCopyWith<_$_RepositoryException> get copyWith =>
      throw _privateConstructorUsedError;
}
