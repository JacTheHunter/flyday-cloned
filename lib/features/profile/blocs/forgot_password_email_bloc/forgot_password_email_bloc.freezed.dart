// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password_email_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPasswordEmailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) setEmail,
    required TResult Function() send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function()? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function()? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetEmail value) setEmail,
    required TResult Function(_Send value) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetEmail value)? setEmail,
    TResult Function(_Send value)? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmail value)? setEmail,
    TResult Function(_Send value)? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEmailEventCopyWith<$Res> {
  factory $ForgotPasswordEmailEventCopyWith(ForgotPasswordEmailEvent value,
          $Res Function(ForgotPasswordEmailEvent) then) =
      _$ForgotPasswordEmailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgotPasswordEmailEventCopyWithImpl<$Res>
    implements $ForgotPasswordEmailEventCopyWith<$Res> {
  _$ForgotPasswordEmailEventCopyWithImpl(this._value, this._then);

  final ForgotPasswordEmailEvent _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordEmailEvent) _then;
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
    extends _$ForgotPasswordEmailEventCopyWithImpl<$Res>
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
    return 'ForgotPasswordEmailEvent.setEmail(value: $value)';
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
    required TResult Function() send,
  }) {
    return setEmail(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function()? send,
  }) {
    return setEmail?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function()? send,
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
    required TResult Function(_Send value) send,
  }) {
    return setEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetEmail value)? setEmail,
    TResult Function(_Send value)? send,
  }) {
    return setEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmail value)? setEmail,
    TResult Function(_Send value)? send,
    required TResult orElse(),
  }) {
    if (setEmail != null) {
      return setEmail(this);
    }
    return orElse();
  }
}

abstract class _SetEmail implements ForgotPasswordEmailEvent {
  const factory _SetEmail(final String value) = _$_SetEmail;

  String get value;
  @JsonKey(ignore: true)
  _$$_SetEmailCopyWith<_$_SetEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendCopyWith<$Res> {
  factory _$$_SendCopyWith(_$_Send value, $Res Function(_$_Send) then) =
      __$$_SendCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SendCopyWithImpl<$Res>
    extends _$ForgotPasswordEmailEventCopyWithImpl<$Res>
    implements _$$_SendCopyWith<$Res> {
  __$$_SendCopyWithImpl(_$_Send _value, $Res Function(_$_Send) _then)
      : super(_value, (v) => _then(v as _$_Send));

  @override
  _$_Send get _value => super._value as _$_Send;
}

/// @nodoc

class _$_Send implements _Send {
  const _$_Send();

  @override
  String toString() {
    return 'ForgotPasswordEmailEvent.send()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Send);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) setEmail,
    required TResult Function() send,
  }) {
    return send();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function()? send,
  }) {
    return send?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function()? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetEmail value) setEmail,
    required TResult Function(_Send value) send,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetEmail value)? setEmail,
    TResult Function(_Send value)? send,
  }) {
    return send?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmail value)? setEmail,
    TResult Function(_Send value)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }
}

abstract class _Send implements ForgotPasswordEmailEvent {
  const factory _Send() = _$_Send;
}

/// @nodoc
mixin _$ForgotPasswordEmailState {
  StateStatus get status => throw _privateConstructorUsedError;
  FormModel get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordEmailStateCopyWith<ForgotPasswordEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEmailStateCopyWith<$Res> {
  factory $ForgotPasswordEmailStateCopyWith(ForgotPasswordEmailState value,
          $Res Function(ForgotPasswordEmailState) then) =
      _$ForgotPasswordEmailStateCopyWithImpl<$Res>;
  $Res call({StateStatus status, FormModel email});

  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$ForgotPasswordEmailStateCopyWithImpl<$Res>
    implements $ForgotPasswordEmailStateCopyWith<$Res> {
  _$ForgotPasswordEmailStateCopyWithImpl(this._value, this._then);

  final ForgotPasswordEmailState _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordEmailState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? email = freezed,
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
abstract class _$$_ForgotPasswordEmailStateCopyWith<$Res>
    implements $ForgotPasswordEmailStateCopyWith<$Res> {
  factory _$$_ForgotPasswordEmailStateCopyWith(
          _$_ForgotPasswordEmailState value,
          $Res Function(_$_ForgotPasswordEmailState) then) =
      __$$_ForgotPasswordEmailStateCopyWithImpl<$Res>;
  @override
  $Res call({StateStatus status, FormModel email});

  @override
  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_ForgotPasswordEmailStateCopyWithImpl<$Res>
    extends _$ForgotPasswordEmailStateCopyWithImpl<$Res>
    implements _$$_ForgotPasswordEmailStateCopyWith<$Res> {
  __$$_ForgotPasswordEmailStateCopyWithImpl(_$_ForgotPasswordEmailState _value,
      $Res Function(_$_ForgotPasswordEmailState) _then)
      : super(_value, (v) => _then(v as _$_ForgotPasswordEmailState));

  @override
  _$_ForgotPasswordEmailState get _value =>
      super._value as _$_ForgotPasswordEmailState;

  @override
  $Res call({
    Object? status = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_ForgotPasswordEmailState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as FormModel,
    ));
  }
}

/// @nodoc

class _$_ForgotPasswordEmailState implements _ForgotPasswordEmailState {
  const _$_ForgotPasswordEmailState(
      {this.status = const StateStatus(),
      this.email = const FormModel(
          name: 'Email', isRequired: true, isEmail: true, maxLength: 255)});

  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final FormModel email;

  @override
  String toString() {
    return 'ForgotPasswordEmailState(status: $status, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordEmailState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$_ForgotPasswordEmailStateCopyWith<_$_ForgotPasswordEmailState>
      get copyWith => __$$_ForgotPasswordEmailStateCopyWithImpl<
          _$_ForgotPasswordEmailState>(this, _$identity);
}

abstract class _ForgotPasswordEmailState implements ForgotPasswordEmailState {
  const factory _ForgotPasswordEmailState(
      {final StateStatus status,
      final FormModel email}) = _$_ForgotPasswordEmailState;

  @override
  StateStatus get status;
  @override
  FormModel get email;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPasswordEmailStateCopyWith<_$_ForgotPasswordEmailState>
      get copyWith => throw _privateConstructorUsedError;
}
