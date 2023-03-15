// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'aircrafts_local_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AircraftsLocalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetch,
    required TResult Function(String value) setSearchPhrase,
    required TResult Function(int id) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(String value)? setSearchPhrase,
    TResult Function(int id)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(String value)? setSearchPhrase,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetSearchPhrase value) setSearchPhrase,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetSearchPhrase value)? setSearchPhrase,
    TResult Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetSearchPhrase value)? setSearchPhrase,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AircraftsLocalEventCopyWith<$Res> {
  factory $AircraftsLocalEventCopyWith(
          AircraftsLocalEvent value, $Res Function(AircraftsLocalEvent) then) =
      _$AircraftsLocalEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AircraftsLocalEventCopyWithImpl<$Res>
    implements $AircraftsLocalEventCopyWith<$Res> {
  _$AircraftsLocalEventCopyWithImpl(this._value, this._then);

  final AircraftsLocalEvent _value;
  // ignore: unused_field
  final $Res Function(AircraftsLocalEvent) _then;
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
  $Res call({bool? more});
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res>
    extends _$AircraftsLocalEventCopyWithImpl<$Res>
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
    return 'AircraftsLocalEvent.fetch(more: $more)';
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
    required TResult Function(String value) setSearchPhrase,
    required TResult Function(int id) delete,
  }) {
    return fetch(more);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(String value)? setSearchPhrase,
    TResult Function(int id)? delete,
  }) {
    return fetch?.call(more);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(String value)? setSearchPhrase,
    TResult Function(int id)? delete,
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
    required TResult Function(_SetSearchPhrase value) setSearchPhrase,
    required TResult Function(_Delete value) delete,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetSearchPhrase value)? setSearchPhrase,
    TResult Function(_Delete value)? delete,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetSearchPhrase value)? setSearchPhrase,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements AircraftsLocalEvent {
  const factory _Fetch([final bool? more]) = _$_Fetch;

  bool? get more;
  @JsonKey(ignore: true)
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetSearchPhraseCopyWith<$Res> {
  factory _$$_SetSearchPhraseCopyWith(
          _$_SetSearchPhrase value, $Res Function(_$_SetSearchPhrase) then) =
      __$$_SetSearchPhraseCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$_SetSearchPhraseCopyWithImpl<$Res>
    extends _$AircraftsLocalEventCopyWithImpl<$Res>
    implements _$$_SetSearchPhraseCopyWith<$Res> {
  __$$_SetSearchPhraseCopyWithImpl(
      _$_SetSearchPhrase _value, $Res Function(_$_SetSearchPhrase) _then)
      : super(_value, (v) => _then(v as _$_SetSearchPhrase));

  @override
  _$_SetSearchPhrase get _value => super._value as _$_SetSearchPhrase;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_SetSearchPhrase(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetSearchPhrase implements _SetSearchPhrase {
  const _$_SetSearchPhrase(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'AircraftsLocalEvent.setSearchPhrase(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetSearchPhrase &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_SetSearchPhraseCopyWith<_$_SetSearchPhrase> get copyWith =>
      __$$_SetSearchPhraseCopyWithImpl<_$_SetSearchPhrase>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetch,
    required TResult Function(String value) setSearchPhrase,
    required TResult Function(int id) delete,
  }) {
    return setSearchPhrase(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(String value)? setSearchPhrase,
    TResult Function(int id)? delete,
  }) {
    return setSearchPhrase?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(String value)? setSearchPhrase,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) {
    if (setSearchPhrase != null) {
      return setSearchPhrase(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetSearchPhrase value) setSearchPhrase,
    required TResult Function(_Delete value) delete,
  }) {
    return setSearchPhrase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetSearchPhrase value)? setSearchPhrase,
    TResult Function(_Delete value)? delete,
  }) {
    return setSearchPhrase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetSearchPhrase value)? setSearchPhrase,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (setSearchPhrase != null) {
      return setSearchPhrase(this);
    }
    return orElse();
  }
}

abstract class _SetSearchPhrase implements AircraftsLocalEvent {
  const factory _SetSearchPhrase(final String value) = _$_SetSearchPhrase;

  String get value;
  @JsonKey(ignore: true)
  _$$_SetSearchPhraseCopyWith<_$_SetSearchPhrase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCopyWith<$Res> {
  factory _$$_DeleteCopyWith(_$_Delete value, $Res Function(_$_Delete) then) =
      __$$_DeleteCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$$_DeleteCopyWithImpl<$Res>
    extends _$AircraftsLocalEventCopyWithImpl<$Res>
    implements _$$_DeleteCopyWith<$Res> {
  __$$_DeleteCopyWithImpl(_$_Delete _value, $Res Function(_$_Delete) _then)
      : super(_value, (v) => _then(v as _$_Delete));

  @override
  _$_Delete get _value => super._value as _$_Delete;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_Delete(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'AircraftsLocalEvent.delete(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Delete &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      __$$_DeleteCopyWithImpl<_$_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetch,
    required TResult Function(String value) setSearchPhrase,
    required TResult Function(int id) delete,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(String value)? setSearchPhrase,
    TResult Function(int id)? delete,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(String value)? setSearchPhrase,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetSearchPhrase value) setSearchPhrase,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetSearchPhrase value)? setSearchPhrase,
    TResult Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetSearchPhrase value)? setSearchPhrase,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements AircraftsLocalEvent {
  const factory _Delete(final int id) = _$_Delete;

  int get id;
  @JsonKey(ignore: true)
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AircraftsLocalState {
  StateStatus get status => throw _privateConstructorUsedError;
  List<AircraftInfo> get localAircrafts => throw _privateConstructorUsedError;
  String get searchPhrase => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AircraftsLocalStateCopyWith<AircraftsLocalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AircraftsLocalStateCopyWith<$Res> {
  factory $AircraftsLocalStateCopyWith(
          AircraftsLocalState value, $Res Function(AircraftsLocalState) then) =
      _$AircraftsLocalStateCopyWithImpl<$Res>;
  $Res call(
      {StateStatus status,
      List<AircraftInfo> localAircrafts,
      String searchPhrase});

  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$AircraftsLocalStateCopyWithImpl<$Res>
    implements $AircraftsLocalStateCopyWith<$Res> {
  _$AircraftsLocalStateCopyWithImpl(this._value, this._then);

  final AircraftsLocalState _value;
  // ignore: unused_field
  final $Res Function(AircraftsLocalState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? localAircrafts = freezed,
    Object? searchPhrase = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      localAircrafts: localAircrafts == freezed
          ? _value.localAircrafts
          : localAircrafts // ignore: cast_nullable_to_non_nullable
              as List<AircraftInfo>,
      searchPhrase: searchPhrase == freezed
          ? _value.searchPhrase
          : searchPhrase // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_AircraftsLocalStateCopyWith<$Res>
    implements $AircraftsLocalStateCopyWith<$Res> {
  factory _$$_AircraftsLocalStateCopyWith(_$_AircraftsLocalState value,
          $Res Function(_$_AircraftsLocalState) then) =
      __$$_AircraftsLocalStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StateStatus status,
      List<AircraftInfo> localAircrafts,
      String searchPhrase});

  @override
  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_AircraftsLocalStateCopyWithImpl<$Res>
    extends _$AircraftsLocalStateCopyWithImpl<$Res>
    implements _$$_AircraftsLocalStateCopyWith<$Res> {
  __$$_AircraftsLocalStateCopyWithImpl(_$_AircraftsLocalState _value,
      $Res Function(_$_AircraftsLocalState) _then)
      : super(_value, (v) => _then(v as _$_AircraftsLocalState));

  @override
  _$_AircraftsLocalState get _value => super._value as _$_AircraftsLocalState;

  @override
  $Res call({
    Object? status = freezed,
    Object? localAircrafts = freezed,
    Object? searchPhrase = freezed,
  }) {
    return _then(_$_AircraftsLocalState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      localAircrafts: localAircrafts == freezed
          ? _value._localAircrafts
          : localAircrafts // ignore: cast_nullable_to_non_nullable
              as List<AircraftInfo>,
      searchPhrase: searchPhrase == freezed
          ? _value.searchPhrase
          : searchPhrase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AircraftsLocalState implements _AircraftsLocalState {
  const _$_AircraftsLocalState(
      {this.status = const StateStatus(),
      final List<AircraftInfo> localAircrafts = const [],
      this.searchPhrase = ''})
      : _localAircrafts = localAircrafts;

  @override
  @JsonKey()
  final StateStatus status;
  final List<AircraftInfo> _localAircrafts;
  @override
  @JsonKey()
  List<AircraftInfo> get localAircrafts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_localAircrafts);
  }

  @override
  @JsonKey()
  final String searchPhrase;

  @override
  String toString() {
    return 'AircraftsLocalState(status: $status, localAircrafts: $localAircrafts, searchPhrase: $searchPhrase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AircraftsLocalState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other._localAircrafts, _localAircrafts) &&
            const DeepCollectionEquality()
                .equals(other.searchPhrase, searchPhrase));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_localAircrafts),
      const DeepCollectionEquality().hash(searchPhrase));

  @JsonKey(ignore: true)
  @override
  _$$_AircraftsLocalStateCopyWith<_$_AircraftsLocalState> get copyWith =>
      __$$_AircraftsLocalStateCopyWithImpl<_$_AircraftsLocalState>(
          this, _$identity);
}

abstract class _AircraftsLocalState implements AircraftsLocalState {
  const factory _AircraftsLocalState(
      {final StateStatus status,
      final List<AircraftInfo> localAircrafts,
      final String searchPhrase}) = _$_AircraftsLocalState;

  @override
  StateStatus get status;
  @override
  List<AircraftInfo> get localAircrafts;
  @override
  String get searchPhrase;
  @override
  @JsonKey(ignore: true)
  _$$_AircraftsLocalStateCopyWith<_$_AircraftsLocalState> get copyWith =>
      throw _privateConstructorUsedError;
}
