// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageFile _$MessageFileFromJson(Map<String, dynamic> json) {
  return _MessageFile.fromJson(json);
}

/// @nodoc
mixin _$MessageFile {
  @JsonKey(name: 'file')
  String get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_type', defaultValue: '')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_size', defaultValue: '')
  String get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageFileCopyWith<MessageFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageFileCopyWith<$Res> {
  factory $MessageFileCopyWith(
          MessageFile value, $Res Function(MessageFile) then) =
      _$MessageFileCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'file') String path,
      @JsonKey(name: 'file_name', defaultValue: '') String name,
      @JsonKey(name: 'file_type', defaultValue: '') String type,
      @JsonKey(name: 'file_size', defaultValue: '') String size});
}

/// @nodoc
class _$MessageFileCopyWithImpl<$Res> implements $MessageFileCopyWith<$Res> {
  _$MessageFileCopyWithImpl(this._value, this._then);

  final MessageFile _value;
  // ignore: unused_field
  final $Res Function(MessageFile) _then;

  @override
  $Res call({
    Object? path = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MessageFileCopyWith<$Res>
    implements $MessageFileCopyWith<$Res> {
  factory _$$_MessageFileCopyWith(
          _$_MessageFile value, $Res Function(_$_MessageFile) then) =
      __$$_MessageFileCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'file') String path,
      @JsonKey(name: 'file_name', defaultValue: '') String name,
      @JsonKey(name: 'file_type', defaultValue: '') String type,
      @JsonKey(name: 'file_size', defaultValue: '') String size});
}

/// @nodoc
class __$$_MessageFileCopyWithImpl<$Res> extends _$MessageFileCopyWithImpl<$Res>
    implements _$$_MessageFileCopyWith<$Res> {
  __$$_MessageFileCopyWithImpl(
      _$_MessageFile _value, $Res Function(_$_MessageFile) _then)
      : super(_value, (v) => _then(v as _$_MessageFile));

  @override
  _$_MessageFile get _value => super._value as _$_MessageFile;

  @override
  $Res call({
    Object? path = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? size = freezed,
  }) {
    return _then(_$_MessageFile(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageFile extends _MessageFile {
  const _$_MessageFile(
      {@JsonKey(name: 'file') required this.path,
      @JsonKey(name: 'file_name', defaultValue: '') required this.name,
      @JsonKey(name: 'file_type', defaultValue: '') required this.type,
      @JsonKey(name: 'file_size', defaultValue: '') required this.size})
      : super._();

  factory _$_MessageFile.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFileFromJson(json);

  @override
  @JsonKey(name: 'file')
  final String path;
  @override
  @JsonKey(name: 'file_name', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'file_type', defaultValue: '')
  final String type;
  @override
  @JsonKey(name: 'file_size', defaultValue: '')
  final String size;

  @override
  String toString() {
    return 'MessageFile(path: $path, name: $name, type: $type, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageFile &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.size, size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(size));

  @JsonKey(ignore: true)
  @override
  _$$_MessageFileCopyWith<_$_MessageFile> get copyWith =>
      __$$_MessageFileCopyWithImpl<_$_MessageFile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageFileToJson(
      this,
    );
  }
}

abstract class _MessageFile extends MessageFile {
  const factory _MessageFile(
      {@JsonKey(name: 'file')
          required final String path,
      @JsonKey(name: 'file_name', defaultValue: '')
          required final String name,
      @JsonKey(name: 'file_type', defaultValue: '')
          required final String type,
      @JsonKey(name: 'file_size', defaultValue: '')
          required final String size}) = _$_MessageFile;
  const _MessageFile._() : super._();

  factory _MessageFile.fromJson(Map<String, dynamic> json) =
      _$_MessageFile.fromJson;

  @override
  @JsonKey(name: 'file')
  String get path;
  @override
  @JsonKey(name: 'file_name', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'file_type', defaultValue: '')
  String get type;
  @override
  @JsonKey(name: 'file_size', defaultValue: '')
  String get size;
  @override
  @JsonKey(ignore: true)
  _$$_MessageFileCopyWith<_$_MessageFile> get copyWith =>
      throw _privateConstructorUsedError;
}
