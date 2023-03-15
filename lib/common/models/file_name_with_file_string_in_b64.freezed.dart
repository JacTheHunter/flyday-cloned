// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file_name_with_file_string_in_b64.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FileNameWithFileStringInB64 _$FileNameWithFileStringInB64FromJson(
    Map<String, dynamic> json) {
  return _FileNameWithFileStringInB64.fromJson(json);
}

/// @nodoc
mixin _$FileNameWithFileStringInB64 {
  @JsonKey(name: 'file_name')
  String get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'file')
  String get fileStringInB64 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileNameWithFileStringInB64CopyWith<FileNameWithFileStringInB64>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileNameWithFileStringInB64CopyWith<$Res> {
  factory $FileNameWithFileStringInB64CopyWith(
          FileNameWithFileStringInB64 value,
          $Res Function(FileNameWithFileStringInB64) then) =
      _$FileNameWithFileStringInB64CopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'file_name') String fileName,
      @JsonKey(name: 'file') String fileStringInB64});
}

/// @nodoc
class _$FileNameWithFileStringInB64CopyWithImpl<$Res>
    implements $FileNameWithFileStringInB64CopyWith<$Res> {
  _$FileNameWithFileStringInB64CopyWithImpl(this._value, this._then);

  final FileNameWithFileStringInB64 _value;
  // ignore: unused_field
  final $Res Function(FileNameWithFileStringInB64) _then;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileStringInB64 = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileStringInB64: fileStringInB64 == freezed
          ? _value.fileStringInB64
          : fileStringInB64 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FileNameWithFileStringInB64CopyWith<$Res>
    implements $FileNameWithFileStringInB64CopyWith<$Res> {
  factory _$$_FileNameWithFileStringInB64CopyWith(
          _$_FileNameWithFileStringInB64 value,
          $Res Function(_$_FileNameWithFileStringInB64) then) =
      __$$_FileNameWithFileStringInB64CopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'file_name') String fileName,
      @JsonKey(name: 'file') String fileStringInB64});
}

/// @nodoc
class __$$_FileNameWithFileStringInB64CopyWithImpl<$Res>
    extends _$FileNameWithFileStringInB64CopyWithImpl<$Res>
    implements _$$_FileNameWithFileStringInB64CopyWith<$Res> {
  __$$_FileNameWithFileStringInB64CopyWithImpl(
      _$_FileNameWithFileStringInB64 _value,
      $Res Function(_$_FileNameWithFileStringInB64) _then)
      : super(_value, (v) => _then(v as _$_FileNameWithFileStringInB64));

  @override
  _$_FileNameWithFileStringInB64 get _value =>
      super._value as _$_FileNameWithFileStringInB64;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileStringInB64 = freezed,
  }) {
    return _then(_$_FileNameWithFileStringInB64(
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileStringInB64: fileStringInB64 == freezed
          ? _value.fileStringInB64
          : fileStringInB64 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FileNameWithFileStringInB64 implements _FileNameWithFileStringInB64 {
  const _$_FileNameWithFileStringInB64(
      {@JsonKey(name: 'file_name') required this.fileName,
      @JsonKey(name: 'file') required this.fileStringInB64});

  factory _$_FileNameWithFileStringInB64.fromJson(Map<String, dynamic> json) =>
      _$$_FileNameWithFileStringInB64FromJson(json);

  @override
  @JsonKey(name: 'file_name')
  final String fileName;
  @override
  @JsonKey(name: 'file')
  final String fileStringInB64;

  @override
  String toString() {
    return 'FileNameWithFileStringInB64(fileName: $fileName, fileStringInB64: $fileStringInB64)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FileNameWithFileStringInB64 &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality()
                .equals(other.fileStringInB64, fileStringInB64));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(fileStringInB64));

  @JsonKey(ignore: true)
  @override
  _$$_FileNameWithFileStringInB64CopyWith<_$_FileNameWithFileStringInB64>
      get copyWith => __$$_FileNameWithFileStringInB64CopyWithImpl<
          _$_FileNameWithFileStringInB64>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FileNameWithFileStringInB64ToJson(
      this,
    );
  }
}

abstract class _FileNameWithFileStringInB64
    implements FileNameWithFileStringInB64 {
  const factory _FileNameWithFileStringInB64(
          {@JsonKey(name: 'file_name') required final String fileName,
          @JsonKey(name: 'file') required final String fileStringInB64}) =
      _$_FileNameWithFileStringInB64;

  factory _FileNameWithFileStringInB64.fromJson(Map<String, dynamic> json) =
      _$_FileNameWithFileStringInB64.fromJson;

  @override
  @JsonKey(name: 'file_name')
  String get fileName;
  @override
  @JsonKey(name: 'file')
  String get fileStringInB64;
  @override
  @JsonKey(ignore: true)
  _$$_FileNameWithFileStringInB64CopyWith<_$_FileNameWithFileStringInB64>
      get copyWith => throw _privateConstructorUsedError;
}
