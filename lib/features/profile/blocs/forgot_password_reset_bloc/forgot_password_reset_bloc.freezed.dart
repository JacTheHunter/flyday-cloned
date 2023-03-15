// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password_reset_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPasswordResetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) setEmail,
    required TResult Function(String value) setCode,
    required TResult Function(String value) setPassword,
    required TResult Function(String value) setConfirmPassword,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function(String value)? setCode,
    TResult Function(String value)? setPassword,
    TResult Function(String value)? setConfirmPassword,
    TResult Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function(String value)? setCode,
    TResult Function(String value)? setPassword,
    TResult Function(String value)? setConfirmPassword,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetEmail value) setEmail,
    required TResult Function(_SetCode value) setCode,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_SetConfirmPassword value) setConfirmPassword,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetEmail value)? setEmail,
    TResult Function(_SetCode value)? setCode,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_SetConfirmPassword value)? setConfirmPassword,
    TResult Function(_Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmail value)? setEmail,
    TResult Function(_SetCode value)? setCode,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_SetConfirmPassword value)? setConfirmPassword,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordResetEventCopyWith<$Res> {
  factory $ForgotPasswordResetEventCopyWith(ForgotPasswordResetEvent value,
          $Res Function(ForgotPasswordResetEvent) then) =
      _$ForgotPasswordResetEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgotPasswordResetEventCopyWithImpl<$Res>
    implements $ForgotPasswordResetEventCopyWith<$Res> {
  _$ForgotPasswordResetEventCopyWithImpl(this._value, this._then);

  final ForgotPasswordResetEvent _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordResetEvent) _then;
}

/// @nodoc
abstract class _$$_SetEmailCopyWith<$Res> {
  factory _$$_SetEmailCopyWith(
          _$_SetEmail value, $Res Function(_$_SetEmail) then) =
      __$$_SetEmailCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$_SetEmailCopyWithImpl<$Res>
    extends _$ForgotPasswordResetEventCopyWithImpl<$Res>
    implements _$$_SetEmailCopyWith<$Res> {
  __$$_SetEmailCopyWithImpl(
      _$_SetEmail _value, $Res Function(_$_SetEmail) _then)
      : super(_value, (v) => _then(v as _$_SetEmail));

  @override
  _$_SetEmail get _value => super._value as _$_SetEmail;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_SetEmail(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetEmail implements _SetEmail {
  const _$_SetEmail(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'ForgotPasswordResetEvent.setEmail(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetEmail &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_SetEmailCopyWith<_$_SetEmail> get copyWith =>
      __$$_SetEmailCopyWithImpl<_$_SetEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) setEmail,
    required TResult Function(String value) setCode,
    required TResult Function(String value) setPassword,
    required TResult Function(String value) setConfirmPassword,
    required TResult Function() submit,
  }) {
    return setEmail(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function(String value)? setCode,
    TResult Function(String value)? setPassword,
    TResult Function(String value)? setConfirmPassword,
    TResult Function()? submit,
  }) {
    return setEmail?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function(String value)? setCode,
    TResult Function(String value)? setPassword,
    TResult Function(String value)? setConfirmPassword,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (setEmail != null) {
      return setEmail(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetEmail value) setEmail,
    required TResult Function(_SetCode value) setCode,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_SetConfirmPassword value) setConfirmPassword,
    required TResult Function(_Submit value) submit,
  }) {
    return setEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetEmail value)? setEmail,
    TResult Function(_SetCode value)? setCode,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_SetConfirmPassword value)? setConfirmPassword,
    TResult Function(_Submit value)? submit,
  }) {
    return setEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmail value)? setEmail,
    TResult Function(_SetCode value)? setCode,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_SetConfirmPassword value)? setConfirmPassword,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (setEmail != null) {
      return setEmail(this);
    }
    return orElse();
  }
}

abstract class _SetEmail implements ForgotPasswordResetEvent {
  const factory _SetEmail(final String value) = _$_SetEmail;

  String get value;
  @JsonKey(ignore: true)
  _$$_SetEmailCopyWith<_$_SetEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetCodeCopyWith<$Res> {
  factory _$$_SetCodeCopyWith(
          _$_SetCode value, $Res Function(_$_SetCode) then) =
      __$$_SetCodeCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$_SetCodeCopyWithImpl<$Res>
    extends _$ForgotPasswordResetEventCopyWithImpl<$Res>
    implements _$$_SetCodeCopyWith<$Res> {
  __$$_SetCodeCopyWithImpl(_$_SetCode _value, $Res Function(_$_SetCode) _then)
      : super(_value, (v) => _then(v as _$_SetCode));

  @override
  _$_SetCode get _value => super._value as _$_SetCode;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_SetCode(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetCode implements _SetCode {
  const _$_SetCode(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'ForgotPasswordResetEvent.setCode(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetCode &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_SetCodeCopyWith<_$_SetCode> get copyWith =>
      __$$_SetCodeCopyWithImpl<_$_SetCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) setEmail,
    required TResult Function(String value) setCode,
    required TResult Function(String value) setPassword,
    required TResult Function(String value) setConfirmPassword,
    required TResult Function() submit,
  }) {
    return setCode(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function(String value)? setCode,
    TResult Function(String value)? setPassword,
    TResult Function(String value)? setConfirmPassword,
    TResult Function()? submit,
  }) {
    return setCode?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function(String value)? setCode,
    TResult Function(String value)? setPassword,
    TResult Function(String value)? setConfirmPassword,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (setCode != null) {
      return setCode(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetEmail value) setEmail,
    required TResult Function(_SetCode value) setCode,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_SetConfirmPassword value) setConfirmPassword,
    required TResult Function(_Submit value) submit,
  }) {
    return setCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetEmail value)? setEmail,
    TResult Function(_SetCode value)? setCode,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_SetConfirmPassword value)? setConfirmPassword,
    TResult Function(_Submit value)? submit,
  }) {
    return setCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmail value)? setEmail,
    TResult Function(_SetCode value)? setCode,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_SetConfirmPassword value)? setConfirmPassword,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (setCode != null) {
      return setCode(this);
    }
    return orElse();
  }
}

abstract class _SetCode implements ForgotPasswordResetEvent {
  const factory _SetCode(final String value) = _$_SetCode;

  String get value;
  @JsonKey(ignore: true)
  _$$_SetCodeCopyWith<_$_SetCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetPasswordCopyWith<$Res> {
  factory _$$_SetPasswordCopyWith(
          _$_SetPassword value, $Res Function(_$_SetPassword) then) =
      __$$_SetPasswordCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$_SetPasswordCopyWithImpl<$Res>
    extends _$ForgotPasswordResetEventCopyWithImpl<$Res>
    implements _$$_SetPasswordCopyWith<$Res> {
  __$$_SetPasswordCopyWithImpl(
      _$_SetPassword _value, $Res Function(_$_SetPassword) _then)
      : super(_value, (v) => _then(v as _$_SetPassword));

  @override
  _$_SetPassword get _value => super._value as _$_SetPassword;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_SetPassword(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetPassword implements _SetPassword {
  const _$_SetPassword(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'ForgotPasswordResetEvent.setPassword(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetPassword &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_SetPasswordCopyWith<_$_SetPassword> get copyWith =>
      __$$_SetPasswordCopyWithImpl<_$_SetPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) setEmail,
    required TResult Function(String value) setCode,
    required TResult Function(String value) setPassword,
    required TResult Function(String value) setConfirmPassword,
    required TResult Function() submit,
  }) {
    return setPassword(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function(String value)? setCode,
    TResult Function(String value)? setPassword,
    TResult Function(String value)? setConfirmPassword,
    TResult Function()? submit,
  }) {
    return setPassword?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function(String value)? setCode,
    TResult Function(String value)? setPassword,
    TResult Function(String value)? setConfirmPassword,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (setPassword != null) {
      return setPassword(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetEmail value) setEmail,
    required TResult Function(_SetCode value) setCode,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_SetConfirmPassword value) setConfirmPassword,
    required TResult Function(_Submit value) submit,
  }) {
    return setPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetEmail value)? setEmail,
    TResult Function(_SetCode value)? setCode,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_SetConfirmPassword value)? setConfirmPassword,
    TResult Function(_Submit value)? submit,
  }) {
    return setPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmail value)? setEmail,
    TResult Function(_SetCode value)? setCode,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_SetConfirmPassword value)? setConfirmPassword,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (setPassword != null) {
      return setPassword(this);
    }
    return orElse();
  }
}

abstract class _SetPassword implements ForgotPasswordResetEvent {
  const factory _SetPassword(final String value) = _$_SetPassword;

  String get value;
  @JsonKey(ignore: true)
  _$$_SetPasswordCopyWith<_$_SetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetConfirmPasswordCopyWith<$Res> {
  factory _$$_SetConfirmPasswordCopyWith(_$_SetConfirmPassword value,
          $Res Function(_$_SetConfirmPassword) then) =
      __$$_SetConfirmPasswordCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$_SetConfirmPasswordCopyWithImpl<$Res>
    extends _$ForgotPasswordResetEventCopyWithImpl<$Res>
    implements _$$_SetConfirmPasswordCopyWith<$Res> {
  __$$_SetConfirmPasswordCopyWithImpl(
      _$_SetConfirmPassword _value, $Res Function(_$_SetConfirmPassword) _then)
      : super(_value, (v) => _then(v as _$_SetConfirmPassword));

  @override
  _$_SetConfirmPassword get _value => super._value as _$_SetConfirmPassword;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_SetConfirmPassword(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetConfirmPassword implements _SetConfirmPassword {
  const _$_SetConfirmPassword(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'ForgotPasswordResetEvent.setConfirmPassword(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetConfirmPassword &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_SetConfirmPasswordCopyWith<_$_SetConfirmPassword> get copyWith =>
      __$$_SetConfirmPasswordCopyWithImpl<_$_SetConfirmPassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) setEmail,
    required TResult Function(String value) setCode,
    required TResult Function(String value) setPassword,
    required TResult Function(String value) setConfirmPassword,
    required TResult Function() submit,
  }) {
    return setConfirmPassword(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function(String value)? setCode,
    TResult Function(String value)? setPassword,
    TResult Function(String value)? setConfirmPassword,
    TResult Function()? submit,
  }) {
    return setConfirmPassword?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function(String value)? setCode,
    TResult Function(String value)? setPassword,
    TResult Function(String value)? setConfirmPassword,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (setConfirmPassword != null) {
      return setConfirmPassword(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetEmail value) setEmail,
    required TResult Function(_SetCode value) setCode,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_SetConfirmPassword value) setConfirmPassword,
    required TResult Function(_Submit value) submit,
  }) {
    return setConfirmPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetEmail value)? setEmail,
    TResult Function(_SetCode value)? setCode,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_SetConfirmPassword value)? setConfirmPassword,
    TResult Function(_Submit value)? submit,
  }) {
    return setConfirmPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmail value)? setEmail,
    TResult Function(_SetCode value)? setCode,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_SetConfirmPassword value)? setConfirmPassword,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (setConfirmPassword != null) {
      return setConfirmPassword(this);
    }
    return orElse();
  }
}

abstract class _SetConfirmPassword implements ForgotPasswordResetEvent {
  const factory _SetConfirmPassword(final String value) = _$_SetConfirmPassword;

  String get value;
  @JsonKey(ignore: true)
  _$$_SetConfirmPasswordCopyWith<_$_SetConfirmPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitCopyWith<$Res> {
  factory _$$_SubmitCopyWith(_$_Submit value, $Res Function(_$_Submit) then) =
      __$$_SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmitCopyWithImpl<$Res>
    extends _$ForgotPasswordResetEventCopyWithImpl<$Res>
    implements _$$_SubmitCopyWith<$Res> {
  __$$_SubmitCopyWithImpl(_$_Submit _value, $Res Function(_$_Submit) _then)
      : super(_value, (v) => _then(v as _$_Submit));

  @override
  _$_Submit get _value => super._value as _$_Submit;
}

/// @nodoc

class _$_Submit implements _Submit {
  const _$_Submit();

  @override
  String toString() {
    return 'ForgotPasswordResetEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) setEmail,
    required TResult Function(String value) setCode,
    required TResult Function(String value) setPassword,
    required TResult Function(String value) setConfirmPassword,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function(String value)? setCode,
    TResult Function(String value)? setPassword,
    TResult Function(String value)? setConfirmPassword,
    TResult Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function(String value)? setCode,
    TResult Function(String value)? setPassword,
    TResult Function(String value)? setConfirmPassword,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetEmail value) setEmail,
    required TResult Function(_SetCode value) setCode,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_SetConfirmPassword value) setConfirmPassword,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetEmail value)? setEmail,
    TResult Function(_SetCode value)? setCode,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_SetConfirmPassword value)? setConfirmPassword,
    TResult Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmail value)? setEmail,
    TResult Function(_SetCode value)? setCode,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_SetConfirmPassword value)? setConfirmPassword,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements ForgotPasswordResetEvent {
  const factory _Submit() = _$_Submit;
}

/// @nodoc
mixin _$ForgotPasswordResetState {
  StateStatus get status => throw _privateConstructorUsedError;
  FormModel get email => throw _privateConstructorUsedError;
  dynamic get isEmailAvailable => throw _privateConstructorUsedError;
  FormModel get password => throw _privateConstructorUsedError;
  FormModel get confirmPassword => throw _privateConstructorUsedError;
  FormModel get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordResetStateCopyWith<ForgotPasswordResetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordResetStateCopyWith<$Res> {
  factory $ForgotPasswordResetStateCopyWith(ForgotPasswordResetState value,
          $Res Function(ForgotPasswordResetState) then) =
      _$ForgotPasswordResetStateCopyWithImpl<$Res>;
  $Res call(
      {StateStatus status,
      FormModel email,
      dynamic isEmailAvailable,
      FormModel password,
      FormModel confirmPassword,
      FormModel code});

  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$ForgotPasswordResetStateCopyWithImpl<$Res>
    implements $ForgotPasswordResetStateCopyWith<$Res> {
  _$ForgotPasswordResetStateCopyWithImpl(this._value, this._then);

  final ForgotPasswordResetState _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordResetState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? email = freezed,
    Object? isEmailAvailable = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as FormModel,
      isEmailAvailable: isEmailAvailable == freezed
          ? _value.isEmailAvailable
          : isEmailAvailable // ignore: cast_nullable_to_non_nullable
              as dynamic,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as FormModel,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as FormModel,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as FormModel,
    ));
  }

  @override
  $StateStatusCopyWith<$Res> get status {
    return $StateStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$$_ForgotPasswordResetStateCopyWith<$Res>
    implements $ForgotPasswordResetStateCopyWith<$Res> {
  factory _$$_ForgotPasswordResetStateCopyWith(
          _$_ForgotPasswordResetState value,
          $Res Function(_$_ForgotPasswordResetState) then) =
      __$$_ForgotPasswordResetStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StateStatus status,
      FormModel email,
      dynamic isEmailAvailable,
      FormModel password,
      FormModel confirmPassword,
      FormModel code});

  @override
  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_ForgotPasswordResetStateCopyWithImpl<$Res>
    extends _$ForgotPasswordResetStateCopyWithImpl<$Res>
    implements _$$_ForgotPasswordResetStateCopyWith<$Res> {
  __$$_ForgotPasswordResetStateCopyWithImpl(_$_ForgotPasswordResetState _value,
      $Res Function(_$_ForgotPasswordResetState) _then)
      : super(_value, (v) => _then(v as _$_ForgotPasswordResetState));

  @override
  _$_ForgotPasswordResetState get _value =>
      super._value as _$_ForgotPasswordResetState;

  @override
  $Res call({
    Object? status = freezed,
    Object? email = freezed,
    Object? isEmailAvailable = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_ForgotPasswordResetState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as FormModel,
      isEmailAvailable: isEmailAvailable == freezed
          ? _value.isEmailAvailable
          : isEmailAvailable,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as FormModel,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as FormModel,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as FormModel,
    ));
  }
}

/// @nodoc

class _$_ForgotPasswordResetState extends _ForgotPasswordResetState {
  const _$_ForgotPasswordResetState(
      {this.status = const StateStatus(),
      this.email = const FormModel(
          name: 'Email', isRequired: true, isEmail: true, maxLength: 255),
      this.isEmailAvailable = false,
      this.password = const FormModel(
          name: 'Password', isRequired: true, minLength: 6, maxLength: 255),
      this.confirmPassword = const FormModel(
          name: 'Confirm password',
          isRequired: true,
          minLength: 6,
          maxLength: 255),
      this.code = const FormModel(
          name: 'Code', isRequired: true, minLength: 1, maxLength: 6)})
      : super._();

  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final FormModel email;
  @override
  @JsonKey()
  final dynamic isEmailAvailable;
  @override
  @JsonKey()
  final FormModel password;
  @override
  @JsonKey()
  final FormModel confirmPassword;
  @override
  @JsonKey()
  final FormModel code;

  @override
  String toString() {
    return 'ForgotPasswordResetState(status: $status, email: $email, isEmailAvailable: $isEmailAvailable, password: $password, confirmPassword: $confirmPassword, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordResetState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.isEmailAvailable, isEmailAvailable) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(isEmailAvailable),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(confirmPassword),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$$_ForgotPasswordResetStateCopyWith<_$_ForgotPasswordResetState>
      get copyWith => __$$_ForgotPasswordResetStateCopyWithImpl<
          _$_ForgotPasswordResetState>(this, _$identity);
}

abstract class _ForgotPasswordResetState extends ForgotPasswordResetState {
  const factory _ForgotPasswordResetState(
      {final StateStatus status,
      final FormModel email,
      final dynamic isEmailAvailable,
      final FormModel password,
      final FormModel confirmPassword,
      final FormModel code}) = _$_ForgotPasswordResetState;
  const _ForgotPasswordResetState._() : super._();

  @override
  StateStatus get status;
  @override
  FormModel get email;
  @override
  dynamic get isEmailAvailable;
  @override
  FormModel get password;
  @override
  FormModel get confirmPassword;
  @override
  FormModel get code;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPasswordResetStateCopyWith<_$_ForgotPasswordResetState>
      get copyWith => throw _privateConstructorUsedError;
}
