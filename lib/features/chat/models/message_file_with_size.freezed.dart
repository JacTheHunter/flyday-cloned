// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_file_with_size.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageFileWithSize {
  MessageFile get file => throw _privateConstructorUsedError;
  Size get size => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageFileWithSizeCopyWith<MessageFileWithSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageFileWithSizeCopyWith<$Res> {
  factory $MessageFileWithSizeCopyWith(
          MessageFileWithSize value, $Res Function(MessageFileWithSize) then) =
      _$MessageFileWithSizeCopyWithImpl<$Res>;
  $Res call({MessageFile file, Size size});

  $MessageFileCopyWith<$Res> get file;
}

/// @nodoc
class _$MessageFileWithSizeCopyWithImpl<$Res>
    implements $MessageFileWithSizeCopyWith<$Res> {
  _$MessageFileWithSizeCopyWithImpl(this._value, this._then);

  final MessageFileWithSize _value;
  // ignore: unused_field
  final $Res Function(MessageFileWithSize) _then;

  @override
  $Res call({
    Object? file = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as MessageFile,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size,
    ));
  }

  @override
  $MessageFileCopyWith<$Res> get file {
    return $MessageFileCopyWith<$Res>(_value.file, (value) {
      return _then(_value.copyWith(file: value));
    });
  }
}

/// @nodoc
abstract class _$$_MessageFileWithSizeCopyWith<$Res>
    implements $MessageFileWithSizeCopyWith<$Res> {
  factory _$$_MessageFileWithSizeCopyWith(_$_MessageFileWithSize value,
          $Res Function(_$_MessageFileWithSize) then) =
      __$$_MessageFileWithSizeCopyWithImpl<$Res>;
  @override
  $Res call({MessageFile file, Size size});

  @override
  $MessageFileCopyWith<$Res> get file;
}

/// @nodoc
class __$$_MessageFileWithSizeCopyWithImpl<$Res>
    extends _$MessageFileWithSizeCopyWithImpl<$Res>
    implements _$$_MessageFileWithSizeCopyWith<$Res> {
  __$$_MessageFileWithSizeCopyWithImpl(_$_MessageFileWithSize _value,
      $Res Function(_$_MessageFileWithSize) _then)
      : super(_value, (v) => _then(v as _$_MessageFileWithSize));

  @override
  _$_MessageFileWithSize get _value => super._value as _$_MessageFileWithSize;

  @override
  $Res call({
    Object? file = freezed,
    Object? size = freezed,
  }) {
    return _then(_$_MessageFileWithSize(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as MessageFile,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size,
    ));
  }
}

/// @nodoc

class _$_MessageFileWithSize implements _MessageFileWithSize {
  _$_MessageFileWithSize({required this.file, required this.size});

  @override
  final MessageFile file;
  @override
  final Size size;

  @override
  String toString() {
    return 'MessageFileWithSize(file: $file, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageFileWithSize &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality().equals(other.size, size));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(file),
      const DeepCollectionEquality().hash(size));

  @JsonKey(ignore: true)
  @override
  _$$_MessageFileWithSizeCopyWith<_$_MessageFileWithSize> get copyWith =>
      __$$_MessageFileWithSizeCopyWithImpl<_$_MessageFileWithSize>(
          this, _$identity);
}

abstract class _MessageFileWithSize implements MessageFileWithSize {
  factory _MessageFileWithSize(
      {required final MessageFile file,
      required final Size size}) = _$_MessageFileWithSize;

  @override
  MessageFile get file;
  @override
  Size get size;
  @override
  @JsonKey(ignore: true)
  _$$_MessageFileWithSizeCopyWith<_$_MessageFileWithSize> get copyWith =>
      throw _privateConstructorUsedError;
}
