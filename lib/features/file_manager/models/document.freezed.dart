// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Document _$DocumentFromJson(Map<String, dynamic> json) {
  return _Document.fromJson(json);
}

/// @nodoc
mixin _$Document {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'section')
  int get sectionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'file')
  String get filePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_name')
  String get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_size')
  String get fileSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentCopyWith<Document> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentCopyWith<$Res> {
  factory $DocumentCopyWith(Document value, $Res Function(Document) then) =
      _$DocumentCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'section') int sectionId,
      @JsonKey(name: 'file') String filePath,
      @JsonKey(name: 'file_name') String fileName,
      @JsonKey(name: 'file_size') String fileSize,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class _$DocumentCopyWithImpl<$Res> implements $DocumentCopyWith<$Res> {
  _$DocumentCopyWithImpl(this._value, this._then);

  final Document _value;
  // ignore: unused_field
  final $Res Function(Document) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? sectionId = freezed,
    Object? filePath = freezed,
    Object? fileName = freezed,
    Object? fileSize = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sectionId: sectionId == freezed
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as int,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: fileSize == freezed
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DocumentCopyWith<$Res> implements $DocumentCopyWith<$Res> {
  factory _$$_DocumentCopyWith(
          _$_Document value, $Res Function(_$_Document) then) =
      __$$_DocumentCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'section') int sectionId,
      @JsonKey(name: 'file') String filePath,
      @JsonKey(name: 'file_name') String fileName,
      @JsonKey(name: 'file_size') String fileSize,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class __$$_DocumentCopyWithImpl<$Res> extends _$DocumentCopyWithImpl<$Res>
    implements _$$_DocumentCopyWith<$Res> {
  __$$_DocumentCopyWithImpl(
      _$_Document _value, $Res Function(_$_Document) _then)
      : super(_value, (v) => _then(v as _$_Document));

  @override
  _$_Document get _value => super._value as _$_Document;

  @override
  $Res call({
    Object? id = freezed,
    Object? sectionId = freezed,
    Object? filePath = freezed,
    Object? fileName = freezed,
    Object? fileSize = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_Document(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sectionId: sectionId == freezed
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as int,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: fileSize == freezed
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Document implements _Document {
  _$_Document(
      {required this.id,
      @JsonKey(name: 'section') required this.sectionId,
      @JsonKey(name: 'file') required this.filePath,
      @JsonKey(name: 'file_name') required this.fileName,
      @JsonKey(name: 'file_size') required this.fileSize,
      @JsonKey(name: 'created_at') required this.createdAt});

  factory _$_Document.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'section')
  final int sectionId;
  @override
  @JsonKey(name: 'file')
  final String filePath;
  @override
  @JsonKey(name: 'file_name')
  final String fileName;
  @override
  @JsonKey(name: 'file_size')
  final String fileSize;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'Document(id: $id, sectionId: $sectionId, filePath: $filePath, fileName: $fileName, fileSize: $fileSize, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Document &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.sectionId, sectionId) &&
            const DeepCollectionEquality().equals(other.filePath, filePath) &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(other.fileSize, fileSize) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(sectionId),
      const DeepCollectionEquality().hash(filePath),
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(fileSize),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$$_DocumentCopyWith<_$_Document> get copyWith =>
      __$$_DocumentCopyWithImpl<_$_Document>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentToJson(
      this,
    );
  }
}

abstract class _Document implements Document {
  factory _Document(
          {required final int id,
          @JsonKey(name: 'section') required final int sectionId,
          @JsonKey(name: 'file') required final String filePath,
          @JsonKey(name: 'file_name') required final String fileName,
          @JsonKey(name: 'file_size') required final String fileSize,
          @JsonKey(name: 'created_at') required final String createdAt}) =
      _$_Document;

  factory _Document.fromJson(Map<String, dynamic> json) = _$_Document.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'section')
  int get sectionId;
  @override
  @JsonKey(name: 'file')
  String get filePath;
  @override
  @JsonKey(name: 'file_name')
  String get fileName;
  @override
  @JsonKey(name: 'file_size')
  String get fileSize;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentCopyWith<_$_Document> get copyWith =>
      throw _privateConstructorUsedError;
}
