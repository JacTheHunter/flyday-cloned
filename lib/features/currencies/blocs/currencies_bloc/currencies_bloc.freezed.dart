// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'currencies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrenciesEvent {
  bool? get more => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrenciesEventCopyWith<CurrenciesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrenciesEventCopyWith<$Res> {
  factory $CurrenciesEventCopyWith(
          CurrenciesEvent value, $Res Function(CurrenciesEvent) then) =
      _$CurrenciesEventCopyWithImpl<$Res>;
  $Res call({bool? more});
}

/// @nodoc
class _$CurrenciesEventCopyWithImpl<$Res>
    implements $CurrenciesEventCopyWith<$Res> {
  _$CurrenciesEventCopyWithImpl(this._value, this._then);

  final CurrenciesEvent _value;
  // ignore: unused_field
  final $Res Function(CurrenciesEvent) _then;

  @override
  $Res call({
    Object? more = freezed,
  }) {
    return _then(_value.copyWith(
      more: more == freezed
          ? _value.more
          : more // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res>
    implements $CurrenciesEventCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
  @override
  $Res call({bool? more});
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res> extends _$CurrenciesEventCopyWithImpl<$Res>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, (v) => _then(v as _$_Fetch));

  @override
  _$_Fetch get _value => super._value as _$_Fetch;

  @override
  $Res call({
    Object? more = freezed,
  }) {
    return _then(_$_Fetch(
      more == freezed
          ? _value.more
          : more // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch([this.more]);

  @override
  final bool? more;

  @override
  String toString() {
    return 'CurrenciesEvent.fetch(more: $more)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fetch &&
            const DeepCollectionEquality().equals(other.more, more));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(more));

  @JsonKey(ignore: true)
  @override
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      __$$_FetchCopyWithImpl<_$_Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetch,
  }) {
    return fetch(more);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
  }) {
    return fetch?.call(more);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(more);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements CurrenciesEvent {
  const factory _Fetch([final bool? more]) = _$_Fetch;

  @override
  bool? get more;
  @override
  @JsonKey(ignore: true)
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CurrenciesState {
  StateStatus get status => throw _privateConstructorUsedError;
  List<Currency> get currencies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrenciesStateCopyWith<CurrenciesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrenciesStateCopyWith<$Res> {
  factory $CurrenciesStateCopyWith(
          CurrenciesState value, $Res Function(CurrenciesState) then) =
      _$CurrenciesStateCopyWithImpl<$Res>;
  $Res call({StateStatus status, List<Currency> currencies});

  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$CurrenciesStateCopyWithImpl<$Res>
    implements $CurrenciesStateCopyWith<$Res> {
  _$CurrenciesStateCopyWithImpl(this._value, this._then);

  final CurrenciesState _value;
  // ignore: unused_field
  final $Res Function(CurrenciesState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? currencies = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      currencies: currencies == freezed
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<Currency>,
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
abstract class _$$_CurrenciesStateCopyWith<$Res>
    implements $CurrenciesStateCopyWith<$Res> {
  factory _$$_CurrenciesStateCopyWith(
          _$_CurrenciesState value, $Res Function(_$_CurrenciesState) then) =
      __$$_CurrenciesStateCopyWithImpl<$Res>;
  @override
  $Res call({StateStatus status, List<Currency> currencies});

  @override
  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_CurrenciesStateCopyWithImpl<$Res>
    extends _$CurrenciesStateCopyWithImpl<$Res>
    implements _$$_CurrenciesStateCopyWith<$Res> {
  __$$_CurrenciesStateCopyWithImpl(
      _$_CurrenciesState _value, $Res Function(_$_CurrenciesState) _then)
      : super(_value, (v) => _then(v as _$_CurrenciesState));

  @override
  _$_CurrenciesState get _value => super._value as _$_CurrenciesState;

  @override
  $Res call({
    Object? status = freezed,
    Object? currencies = freezed,
  }) {
    return _then(_$_CurrenciesState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      currencies: currencies == freezed
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<Currency>,
    ));
  }
}

/// @nodoc

class _$_CurrenciesState implements _CurrenciesState {
  const _$_CurrenciesState(
      {this.status = const StateStatus(),
      final List<Currency> currencies = const []})
      : _currencies = currencies;

  @override
  @JsonKey()
  final StateStatus status;
  final List<Currency> _currencies;
  @override
  @JsonKey()
  List<Currency> get currencies {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  @override
  String toString() {
    return 'CurrenciesState(status: $status, currencies: $currencies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrenciesState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_currencies));

  @JsonKey(ignore: true)
  @override
  _$$_CurrenciesStateCopyWith<_$_CurrenciesState> get copyWith =>
      __$$_CurrenciesStateCopyWithImpl<_$_CurrenciesState>(this, _$identity);
}

abstract class _CurrenciesState implements CurrenciesState {
  const factory _CurrenciesState(
      {final StateStatus status,
      final List<Currency> currencies}) = _$_CurrenciesState;

  @override
  StateStatus get status;
  @override
  List<Currency> get currencies;
  @override
  @JsonKey(ignore: true)
  _$$_CurrenciesStateCopyWith<_$_CurrenciesState> get copyWith =>
      throw _privateConstructorUsedError;
}
