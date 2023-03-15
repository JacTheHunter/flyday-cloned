// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file_name_with_file_bytes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FileNameWithFileBytes {
  String get fileName => throw _privateConstructorUsedError;
  Uint8List get bytes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileNameWithFileBytesCopyWith<FileNameWithFileBytes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileNameWithFileBytesCopyWith<$Res> {
  factory $FileNameWithFileBytesCopyWith(FileNameWithFileBytes value,
          $Res Function(FileNameWithFileBytes) then) =
      _$FileNameWithFileBytesCopyWithImpl<$Res>;
  $Res call({String fileName, Uint8List bytes});
}

/// @nodoc
class _$FileNameWithFileBytesCopyWithImpl<$Res>
    implements $FileNameWithFileBytesCopyWith<$Res> {
  _$FileNameWithFileBytesCopyWithImpl(this._value, this._then);

  final FileNameWithFileBytes _value;
  // ignore: unused_field
  final $Res Function(FileNameWithFileBytes) _then;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? bytes = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: bytes == freezed
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc
abstract class _$$_FileNameWithFileBytesCopyWith<$Res>
    implements $FileNameWithFileBytesCopyWith<$Res> {
  factory _$$_FileNameWithFileBytesCopyWith(_$_FileNameWithFileBytes value,
          $Res Function(_$_FileNameWithFileBytes) then) =
      __$$_FileNameWithFileBytesCopyWithImpl<$Res>;
  @override
  $Res call({String fileName, Uint8List bytes});
}

/// @nodoc
class __$$_FileNameWithFileBytesCopyWithImpl<$Res>
    extends _$FileNameWithFileBytesCopyWithImpl<$Res>
    implements _$$_FileNameWithFileBytesCopyWith<$Res> {
  __$$_FileNameWithFileBytesCopyWithImpl(_$_FileNameWithFileBytes _value,
      $Res Function(_$_FileNameWithFileBytes) _then)
      : super(_value, (v) => _then(v as _$_FileNameWithFileBytes));

  @override
  _$_FileNameWithFileBytes get _value =>
      super._value as _$_FileNameWithFileBytes;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? bytes = freezed,
  }) {
    return _then(_$_FileNameWithFileBytes(
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: bytes == freezed
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_FileNameWithFileBytes implements _FileNameWithFileBytes {
  _$_FileNameWithFileBytes({required this.fileName, required this.bytes});

  @override
  final String fileName;
  @override
  final Uint8List bytes;

  @override
  String toString() {
    return 'FileNameWithFileBytes(fileName: $fileName, bytes: $bytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FileNameWithFileBytes &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(bytes));

  @JsonKey(ignore: true)
  @override
  _$$_FileNameWithFileBytesCopyWith<_$_FileNameWithFileBytes> get copyWith =>
      __$$_FileNameWithFileBytesCopyWithImpl<_$_FileNameWithFileBytes>(
          this, _$identity);
}

abstract class _FileNameWithFileBytes implements FileNameWithFileBytes {
  factory _FileNameWithFileBytes(
      {required final String fileName,
      required final Uint8List bytes}) = _$_FileNameWithFileBytes;

  @override
  String get fileName;
  @override
  Uint8List get bytes;
  @override
  @JsonKey(ignore: true)
  _$$_FileNameWithFileBytesCopyWith<_$_FileNameWithFileBytes> get copyWith =>
      throw _privateConstructorUsedError;
}
