// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'email_check_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailCheckResponse _$EmailCheckResponseFromJson(Map<String, dynamic> json) {
  return _EmailCheckResponse.fromJson(json);
}

/// @nodoc
mixin _$EmailCheckResponse {
  String get email =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'can_use')
  bool get isAvailabe => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailCheckResponseCopyWith<EmailCheckResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailCheckResponseCopyWith<$Res> {
  factory $EmailCheckResponseCopyWith(
          EmailCheckResponse value, $Res Function(EmailCheckResponse) then) =
      _$EmailCheckResponseCopyWithImpl<$Res>;
  $Res call({String email, @JsonKey(name: 'can_use') bool isAvailabe});
}

/// @nodoc
class _$EmailCheckResponseCopyWithImpl<$Res>
    implements $EmailCheckResponseCopyWith<$Res> {
  _$EmailCheckResponseCopyWithImpl(this._value, this._then);

  final EmailCheckResponse _value;
  // ignore: unused_field
  final $Res Function(EmailCheckResponse) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? isAvailabe = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isAvailabe: isAvailabe == freezed
          ? _value.isAvailabe
          : isAvailabe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_EmailCheckResponseCopyWith<$Res>
    implements $EmailCheckResponseCopyWith<$Res> {
  factory _$$_EmailCheckResponseCopyWith(_$_EmailCheckResponse value,
          $Res Function(_$_EmailCheckResponse) then) =
      __$$_EmailCheckResponseCopyWithImpl<$Res>;
  @override
  $Res call({String email, @JsonKey(name: 'can_use') bool isAvailabe});
}

/// @nodoc
class __$$_EmailCheckResponseCopyWithImpl<$Res>
    extends _$EmailCheckResponseCopyWithImpl<$Res>
    implements _$$_EmailCheckResponseCopyWith<$Res> {
  __$$_EmailCheckResponseCopyWithImpl(
      _$_EmailCheckResponse _value, $Res Function(_$_EmailCheckResponse) _then)
      : super(_value, (v) => _then(v as _$_EmailCheckResponse));

  @override
  _$_EmailCheckResponse get _value => super._value as _$_EmailCheckResponse;

  @override
  $Res call({
    Object? email = freezed,
    Object? isAvailabe = freezed,
  }) {
    return _then(_$_EmailCheckResponse(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isAvailabe: isAvailabe == freezed
          ? _value.isAvailabe
          : isAvailabe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmailCheckResponse implements _EmailCheckResponse {
  _$_EmailCheckResponse(
      {required this.email,
      @JsonKey(name: 'can_use') required this.isAvailabe});

  factory _$_EmailCheckResponse.fromJson(Map<String, dynamic> json) =>
      _$$_EmailCheckResponseFromJson(json);

  @override
  final String email;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'can_use')
  final bool isAvailabe;

  @override
  String toString() {
    return 'EmailCheckResponse(email: $email, isAvailabe: $isAvailabe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailCheckResponse &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.isAvailabe, isAvailabe));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(isAvailabe));

  @JsonKey(ignore: true)
  @override
  _$$_EmailCheckResponseCopyWith<_$_EmailCheckResponse> get copyWith =>
      __$$_EmailCheckResponseCopyWithImpl<_$_EmailCheckResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailCheckResponseToJson(
      this,
    );
  }
}

abstract class _EmailCheckResponse implements EmailCheckResponse {
  factory _EmailCheckResponse(
          {required final String email,
          @JsonKey(name: 'can_use') required final bool isAvailabe}) =
      _$_EmailCheckResponse;

  factory _EmailCheckResponse.fromJson(Map<String, dynamic> json) =
      _$_EmailCheckResponse.fromJson;

  @override
  String get email;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'can_use')
  bool get isAvailabe;
  @override
  @JsonKey(ignore: true)
  _$$_EmailCheckResponseCopyWith<_$_EmailCheckResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
