// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file_name_with_file_path.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FileNameWithFilePath _$FileNameWithFilePathFromJson(Map<String, dynamic> json) {
  return _FileNameWithFilePath.fromJson(json);
}

/// @nodoc
mixin _$FileNameWithFilePath {
  @JsonKey(name: 'file_name')
  String get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get filePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileNameWithFilePathCopyWith<FileNameWithFilePath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileNameWithFilePathCopyWith<$Res> {
  factory $FileNameWithFilePathCopyWith(FileNameWithFilePath value,
          $Res Function(FileNameWithFilePath) then) =
      _$FileNameWithFilePathCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'file_name') String fileName,
      @JsonKey(name: 'url') String filePath});
}

/// @nodoc
class _$FileNameWithFilePathCopyWithImpl<$Res>
    implements $FileNameWithFilePathCopyWith<$Res> {
  _$FileNameWithFilePathCopyWithImpl(this._value, this._then);

  final FileNameWithFilePath _value;
  // ignore: unused_field
  final $Res Function(FileNameWithFilePath) _then;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? filePath = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FileNameWithFilePathCopyWith<$Res>
    implements $FileNameWithFilePathCopyWith<$Res> {
  factory _$$_FileNameWithFilePathCopyWith(_$_FileNameWithFilePath value,
          $Res Function(_$_FileNameWithFilePath) then) =
      __$$_FileNameWithFilePathCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'file_name') String fileName,
      @JsonKey(name: 'url') String filePath});
}

/// @nodoc
class __$$_FileNameWithFilePathCopyWithImpl<$Res>
    extends _$FileNameWithFilePathCopyWithImpl<$Res>
    implements _$$_FileNameWithFilePathCopyWith<$Res> {
  __$$_FileNameWithFilePathCopyWithImpl(_$_FileNameWithFilePath _value,
      $Res Function(_$_FileNameWithFilePath) _then)
      : super(_value, (v) => _then(v as _$_FileNameWithFilePath));

  @override
  _$_FileNameWithFilePath get _value => super._value as _$_FileNameWithFilePath;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? filePath = freezed,
  }) {
    return _then(_$_FileNameWithFilePath(
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FileNameWithFilePath implements _FileNameWithFilePath {
  _$_FileNameWithFilePath(
      {@JsonKey(name: 'file_name') required this.fileName,
      @JsonKey(name: 'url') required this.filePath});

  factory _$_FileNameWithFilePath.fromJson(Map<String, dynamic> json) =>
      _$$_FileNameWithFilePathFromJson(json);

  @override
  @JsonKey(name: 'file_name')
  final String fileName;
  @override
  @JsonKey(name: 'url')
  final String filePath;

  @override
  String toString() {
    return 'FileNameWithFilePath(fileName: $fileName, filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FileNameWithFilePath &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(other.filePath, filePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(filePath));

  @JsonKey(ignore: true)
  @override
  _$$_FileNameWithFilePathCopyWith<_$_FileNameWithFilePath> get copyWith =>
      __$$_FileNameWithFilePathCopyWithImpl<_$_FileNameWithFilePath>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FileNameWithFilePathToJson(
      this,
    );
  }
}

abstract class _FileNameWithFilePath implements FileNameWithFilePath {
  factory _FileNameWithFilePath(
          {@JsonKey(name: 'file_name') required final String fileName,
          @JsonKey(name: 'url') required final String filePath}) =
      _$_FileNameWithFilePath;

  factory _FileNameWithFilePath.fromJson(Map<String, dynamic> json) =
      _$_FileNameWithFilePath.fromJson;

  @override
  @JsonKey(name: 'file_name')
  String get fileName;
  @override
  @JsonKey(name: 'url')
  String get filePath;
  @override
  @JsonKey(ignore: true)
  _$$_FileNameWithFilePathCopyWith<_$_FileNameWithFilePath> get copyWith =>
      throw _privateConstructorUsedError;
}
