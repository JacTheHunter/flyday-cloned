// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) updateEmail,
    required TResult Function(String value) updatePassword,
    required TResult Function(bool value) updateRememberMe,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(bool value)? updateRememberMe,
    TResult Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(bool value)? updateRememberMe,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateRememberMe value) updateRememberMe,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateRememberMe value)? updateRememberMe,
    TResult Function(_Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateRememberMe value)? updateRememberMe,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$$_UpdateEmailCopyWith<$Res> {
  factory _$$_UpdateEmailCopyWith(
          _$_UpdateEmail value, $Res Function(_$_UpdateEmail) then) =
      __$$_UpdateEmailCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$_UpdateEmailCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_UpdateEmailCopyWith<$Res> {
  __$$_UpdateEmailCopyWithImpl(
      _$_UpdateEmail _value, $Res Function(_$_UpdateEmail) _then)
      : super(_value, (v) => _then(v as _$_UpdateEmail));

  @override
  _$_UpdateEmail get _value => super._value as _$_UpdateEmail;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_UpdateEmail(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateEmail implements _UpdateEmail {
  const _$_UpdateEmail(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginEvent.updateEmail(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateEmail &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateEmailCopyWith<_$_UpdateEmail> get copyWith =>
      __$$_UpdateEmailCopyWithImpl<_$_UpdateEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) updateEmail,
    required TResult Function(String value) updatePassword,
    required TResult Function(bool value) updateRememberMe,
    required TResult Function() submit,
  }) {
    return updateEmail(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(bool value)? updateRememberMe,
    TResult Function()? submit,
  }) {
    return updateEmail?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(bool value)? updateRememberMe,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateRememberMe value) updateRememberMe,
    required TResult Function(_Submit value) submit,
  }) {
    return updateEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateRememberMe value)? updateRememberMe,
    TResult Function(_Submit value)? submit,
  }) {
    return updateEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateRememberMe value)? updateRememberMe,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(this);
    }
    return orElse();
  }
}

abstract class _UpdateEmail implements LoginEvent {
  const factory _UpdateEmail(final String value) = _$_UpdateEmail;

  String get value;
  @JsonKey(ignore: true)
  _$$_UpdateEmailCopyWith<_$_UpdateEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdatePasswordCopyWith<$Res> {
  factory _$$_UpdatePasswordCopyWith(
          _$_UpdatePassword value, $Res Function(_$_UpdatePassword) then) =
      __$$_UpdatePasswordCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$_UpdatePasswordCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_UpdatePasswordCopyWith<$Res> {
  __$$_UpdatePasswordCopyWithImpl(
      _$_UpdatePassword _value, $Res Function(_$_UpdatePassword) _then)
      : super(_value, (v) => _then(v as _$_UpdatePassword));

  @override
  _$_UpdatePassword get _value => super._value as _$_UpdatePassword;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_UpdatePassword(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdatePassword implements _UpdatePassword {
  const _$_UpdatePassword(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginEvent.updatePassword(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatePassword &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_UpdatePasswordCopyWith<_$_UpdatePassword> get copyWith =>
      __$$_UpdatePasswordCopyWithImpl<_$_UpdatePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) updateEmail,
    required TResult Function(String value) updatePassword,
    required TResult Function(bool value) updateRememberMe,
    required TResult Function() submit,
  }) {
    return updatePassword(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(bool value)? updateRememberMe,
    TResult Function()? submit,
  }) {
    return updatePassword?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(bool value)? updateRememberMe,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateRememberMe value) updateRememberMe,
    required TResult Function(_Submit value) submit,
  }) {
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateRememberMe value)? updateRememberMe,
    TResult Function(_Submit value)? submit,
  }) {
    return updatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateRememberMe value)? updateRememberMe,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class _UpdatePassword implements LoginEvent {
  const factory _UpdatePassword(final String value) = _$_UpdatePassword;

  String get value;
  @JsonKey(ignore: true)
  _$$_UpdatePasswordCopyWith<_$_UpdatePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateRememberMeCopyWith<$Res> {
  factory _$$_UpdateRememberMeCopyWith(
          _$_UpdateRememberMe value, $Res Function(_$_UpdateRememberMe) then) =
      __$$_UpdateRememberMeCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$$_UpdateRememberMeCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_UpdateRememberMeCopyWith<$Res> {
  __$$_UpdateRememberMeCopyWithImpl(
      _$_UpdateRememberMe _value, $Res Function(_$_UpdateRememberMe) _then)
      : super(_value, (v) => _then(v as _$_UpdateRememberMe));

  @override
  _$_UpdateRememberMe get _value => super._value as _$_UpdateRememberMe;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_UpdateRememberMe(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UpdateRememberMe implements _UpdateRememberMe {
  const _$_UpdateRememberMe(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'LoginEvent.updateRememberMe(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateRememberMe &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateRememberMeCopyWith<_$_UpdateRememberMe> get copyWith =>
      __$$_UpdateRememberMeCopyWithImpl<_$_UpdateRememberMe>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) updateEmail,
    required TResult Function(String value) updatePassword,
    required TResult Function(bool value) updateRememberMe,
    required TResult Function() submit,
  }) {
    return updateRememberMe(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(bool value)? updateRememberMe,
    TResult Function()? submit,
  }) {
    return updateRememberMe?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(bool value)? updateRememberMe,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (updateRememberMe != null) {
      return updateRememberMe(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateRememberMe value) updateRememberMe,
    required TResult Function(_Submit value) submit,
  }) {
    return updateRememberMe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateRememberMe value)? updateRememberMe,
    TResult Function(_Submit value)? submit,
  }) {
    return updateRememberMe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateRememberMe value)? updateRememberMe,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (updateRememberMe != null) {
      return updateRememberMe(this);
    }
    return orElse();
  }
}

abstract class _UpdateRememberMe implements LoginEvent {
  const factory _UpdateRememberMe(final bool value) = _$_UpdateRememberMe;

  bool get value;
  @JsonKey(ignore: true)
  _$$_UpdateRememberMeCopyWith<_$_UpdateRememberMe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitCopyWith<$Res> {
  factory _$$_SubmitCopyWith(_$_Submit value, $Res Function(_$_Submit) then) =
      __$$_SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmitCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
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
    return 'LoginEvent.submit()';
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
    required TResult Function(String value) updateEmail,
    required TResult Function(String value) updatePassword,
    required TResult Function(bool value) updateRememberMe,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(bool value)? updateRememberMe,
    TResult Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(bool value)? updateRememberMe,
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
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateRememberMe value) updateRememberMe,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateRememberMe value)? updateRememberMe,
    TResult Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateRememberMe value)? updateRememberMe,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements LoginEvent {
  const factory _Submit() = _$_Submit;
}

/// @nodoc
mixin _$LoginState {
  StateStatus get status => throw _privateConstructorUsedError;
  FormModel get email => throw _privateConstructorUsedError;
  FormModel get password => throw _privateConstructorUsedError;
  bool get rememberMe => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {StateStatus status,
      FormModel email,
      FormModel password,
      bool rememberMe});

  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? rememberMe = freezed,
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
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as FormModel,
      rememberMe: rememberMe == freezed
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StateStatus status,
      FormModel email,
      FormModel password,
      bool rememberMe});

  @override
  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, (v) => _then(v as _$_LoginState));

  @override
  _$_LoginState get _value => super._value as _$_LoginState;

  @override
  $Res call({
    Object? status = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? rememberMe = freezed,
  }) {
    return _then(_$_LoginState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as FormModel,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as FormModel,
      rememberMe: rememberMe == freezed
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {this.status = const StateStatus(),
      this.email = const FormModel(
          name: 'Email', isRequired: true, isEmail: true, maxLength: 255),
      this.password = const FormModel(
          name: 'Password', isRequired: true, minLength: 6, maxLength: 255),
      this.rememberMe = false});

  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final FormModel email;
  @override
  @JsonKey()
  final FormModel password;
  @override
  @JsonKey()
  final bool rememberMe;

  @override
  String toString() {
    return 'LoginState(status: $status, email: $email, password: $password, rememberMe: $rememberMe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.rememberMe, rememberMe));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(rememberMe));

  @JsonKey(ignore: true)
  @override
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final StateStatus status,
      final FormModel email,
      final FormModel password,
      final bool rememberMe}) = _$_LoginState;

  @override
  StateStatus get status;
  @override
  FormModel get email;
  @override
  FormModel get password;
  @override
  bool get rememberMe;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
