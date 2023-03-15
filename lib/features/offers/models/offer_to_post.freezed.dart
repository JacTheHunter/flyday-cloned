// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'offer_to_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OfferToPost _$OfferToPostFromJson(Map<String, dynamic> json) {
  return _OfferToPost.fromJson(json);
}

/// @nodoc
mixin _$OfferToPost {
  OfferToPostOffer get offer => throw _privateConstructorUsedError;
  OfferToPostAircraft get aircraft => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferToPostCopyWith<OfferToPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferToPostCopyWith<$Res> {
  factory $OfferToPostCopyWith(
          OfferToPost value, $Res Function(OfferToPost) then) =
      _$OfferToPostCopyWithImpl<$Res>;
  $Res call({OfferToPostOffer offer, OfferToPostAircraft aircraft});

  $OfferToPostOfferCopyWith<$Res> get offer;
  $OfferToPostAircraftCopyWith<$Res> get aircraft;
}

/// @nodoc
class _$OfferToPostCopyWithImpl<$Res> implements $OfferToPostCopyWith<$Res> {
  _$OfferToPostCopyWithImpl(this._value, this._then);

  final OfferToPost _value;
  // ignore: unused_field
  final $Res Function(OfferToPost) _then;

  @override
  $Res call({
    Object? offer = freezed,
    Object? aircraft = freezed,
  }) {
    return _then(_value.copyWith(
      offer: offer == freezed
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as OfferToPostOffer,
      aircraft: aircraft == freezed
          ? _value.aircraft
          : aircraft // ignore: cast_nullable_to_non_nullable
              as OfferToPostAircraft,
    ));
  }

  @override
  $OfferToPostOfferCopyWith<$Res> get offer {
    return $OfferToPostOfferCopyWith<$Res>(_value.offer, (value) {
      return _then(_value.copyWith(offer: value));
    });
  }

  @override
  $OfferToPostAircraftCopyWith<$Res> get aircraft {
    return $OfferToPostAircraftCopyWith<$Res>(_value.aircraft, (value) {
      return _then(_value.copyWith(aircraft: value));
    });
  }
}

/// @nodoc
abstract class _$$_OfferToPostCopyWith<$Res>
    implements $OfferToPostCopyWith<$Res> {
  factory _$$_OfferToPostCopyWith(
          _$_OfferToPost value, $Res Function(_$_OfferToPost) then) =
      __$$_OfferToPostCopyWithImpl<$Res>;
  @override
  $Res call({OfferToPostOffer offer, OfferToPostAircraft aircraft});

  @override
  $OfferToPostOfferCopyWith<$Res> get offer;
  @override
  $OfferToPostAircraftCopyWith<$Res> get aircraft;
}

/// @nodoc
class __$$_OfferToPostCopyWithImpl<$Res> extends _$OfferToPostCopyWithImpl<$Res>
    implements _$$_OfferToPostCopyWith<$Res> {
  __$$_OfferToPostCopyWithImpl(
      _$_OfferToPost _value, $Res Function(_$_OfferToPost) _then)
      : super(_value, (v) => _then(v as _$_OfferToPost));

  @override
  _$_OfferToPost get _value => super._value as _$_OfferToPost;

  @override
  $Res call({
    Object? offer = freezed,
    Object? aircraft = freezed,
  }) {
    return _then(_$_OfferToPost(
      offer: offer == freezed
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as OfferToPostOffer,
      aircraft: aircraft == freezed
          ? _value.aircraft
          : aircraft // ignore: cast_nullable_to_non_nullable
              as OfferToPostAircraft,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfferToPost implements _OfferToPost {
  _$_OfferToPost({required this.offer, required this.aircraft});

  factory _$_OfferToPost.fromJson(Map<String, dynamic> json) =>
      _$$_OfferToPostFromJson(json);

  @override
  final OfferToPostOffer offer;
  @override
  final OfferToPostAircraft aircraft;

  @override
  String toString() {
    return 'OfferToPost(offer: $offer, aircraft: $aircraft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferToPost &&
            const DeepCollectionEquality().equals(other.offer, offer) &&
            const DeepCollectionEquality().equals(other.aircraft, aircraft));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(offer),
      const DeepCollectionEquality().hash(aircraft));

  @JsonKey(ignore: true)
  @override
  _$$_OfferToPostCopyWith<_$_OfferToPost> get copyWith =>
      __$$_OfferToPostCopyWithImpl<_$_OfferToPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferToPostToJson(
      this,
    );
  }
}

abstract class _OfferToPost implements OfferToPost {
  factory _OfferToPost(
      {required final OfferToPostOffer offer,
      required final OfferToPostAircraft aircraft}) = _$_OfferToPost;

  factory _OfferToPost.fromJson(Map<String, dynamic> json) =
      _$_OfferToPost.fromJson;

  @override
  OfferToPostOffer get offer;
  @override
  OfferToPostAircraft get aircraft;
  @override
  @JsonKey(ignore: true)
  _$$_OfferToPostCopyWith<_$_OfferToPost> get copyWith =>
      throw _privateConstructorUsedError;
}
