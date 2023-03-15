// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'aircraft_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AircraftImage _$AircraftImageFromJson(Map<String, dynamic> json) {
  return _AircraftImage.fromJson(json);
}

/// @nodoc
mixin _$AircraftImage {
  int? get id =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'photo') required String url,
  String? get url => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AircraftImageCopyWith<AircraftImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AircraftImageCopyWith<$Res> {
  factory $AircraftImageCopyWith(
          AircraftImage value, $Res Function(AircraftImage) then) =
      _$AircraftImageCopyWithImpl<$Res>;
  $Res call({int? id, String? url, String? photo});
}

/// @nodoc
class _$AircraftImageCopyWithImpl<$Res>
    implements $AircraftImageCopyWith<$Res> {
  _$AircraftImageCopyWithImpl(this._value, this._then);

  final AircraftImage _value;
  // ignore: unused_field
  final $Res Function(AircraftImage) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AircraftImageCopyWith<$Res>
    implements $AircraftImageCopyWith<$Res> {
  factory _$$_AircraftImageCopyWith(
          _$_AircraftImage value, $Res Function(_$_AircraftImage) then) =
      __$$_AircraftImageCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? url, String? photo});
}

/// @nodoc
class __$$_AircraftImageCopyWithImpl<$Res>
    extends _$AircraftImageCopyWithImpl<$Res>
    implements _$$_AircraftImageCopyWith<$Res> {
  __$$_AircraftImageCopyWithImpl(
      _$_AircraftImage _value, $Res Function(_$_AircraftImage) _then)
      : super(_value, (v) => _then(v as _$_AircraftImage));

  @override
  _$_AircraftImage get _value => super._value as _$_AircraftImage;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$_AircraftImage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AircraftImage extends _AircraftImage {
  const _$_AircraftImage({this.id, this.url, this.photo}) : super._();

  factory _$_AircraftImage.fromJson(Map<String, dynamic> json) =>
      _$$_AircraftImageFromJson(json);

  @override
  final int? id;
// @JsonKey(name: 'photo') required String url,
  @override
  final String? url;
  @override
  final String? photo;

  @override
  String toString() {
    return 'AircraftImage(id: $id, url: $url, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AircraftImage &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.photo, photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(photo));

  @JsonKey(ignore: true)
  @override
  _$$_AircraftImageCopyWith<_$_AircraftImage> get copyWith =>
      __$$_AircraftImageCopyWithImpl<_$_AircraftImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AircraftImageToJson(
      this,
    );
  }
}

abstract class _AircraftImage extends AircraftImage {
  const factory _AircraftImage(
      {final int? id,
      final String? url,
      final String? photo}) = _$_AircraftImage;
  const _AircraftImage._() : super._();

  factory _AircraftImage.fromJson(Map<String, dynamic> json) =
      _$_AircraftImage.fromJson;

  @override
  int? get id;
  @override // @JsonKey(name: 'photo') required String url,
  String? get url;
  @override
  String? get photo;
  @override
  @JsonKey(ignore: true)
  _$$_AircraftImageCopyWith<_$_AircraftImage> get copyWith =>
      throw _privateConstructorUsedError;
}
