// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'aircraft_types_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AircraftTypesEvent {
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
  $AircraftTypesEventCopyWith<AircraftTypesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AircraftTypesEventCopyWith<$Res> {
  factory $AircraftTypesEventCopyWith(
          AircraftTypesEvent value, $Res Function(AircraftTypesEvent) then) =
      _$AircraftTypesEventCopyWithImpl<$Res>;
  $Res call({bool? more});
}

/// @nodoc
class _$AircraftTypesEventCopyWithImpl<$Res>
    implements $AircraftTypesEventCopyWith<$Res> {
  _$AircraftTypesEventCopyWithImpl(this._value, this._then);

  final AircraftTypesEvent _value;
  // ignore: unused_field
  final $Res Function(AircraftTypesEvent) _then;

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
    implements $AircraftTypesEventCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
  @override
  $Res call({bool? more});
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res>
    extends _$AircraftTypesEventCopyWithImpl<$Res>
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
    return 'AircraftTypesEvent.fetch(more: $more)';
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

abstract class _Fetch implements AircraftTypesEvent {
  const factory _Fetch([final bool? more]) = _$_Fetch;

  @override
  bool? get more;
  @override
  @JsonKey(ignore: true)
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AircraftTypesState {
  StateStatus get status => throw _privateConstructorUsedError;
  List<AircraftType> get aircraftTypes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AircraftTypesStateCopyWith<AircraftTypesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AircraftTypesStateCopyWith<$Res> {
  factory $AircraftTypesStateCopyWith(
          AircraftTypesState value, $Res Function(AircraftTypesState) then) =
      _$AircraftTypesStateCopyWithImpl<$Res>;
  $Res call({StateStatus status, List<AircraftType> aircraftTypes});

  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$AircraftTypesStateCopyWithImpl<$Res>
    implements $AircraftTypesStateCopyWith<$Res> {
  _$AircraftTypesStateCopyWithImpl(this._value, this._then);

  final AircraftTypesState _value;
  // ignore: unused_field
  final $Res Function(AircraftTypesState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? aircraftTypes = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      aircraftTypes: aircraftTypes == freezed
          ? _value.aircraftTypes
          : aircraftTypes // ignore: cast_nullable_to_non_nullable
              as List<AircraftType>,
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
abstract class _$$_AircraftTypesStateCopyWith<$Res>
    implements $AircraftTypesStateCopyWith<$Res> {
  factory _$$_AircraftTypesStateCopyWith(_$_AircraftTypesState value,
          $Res Function(_$_AircraftTypesState) then) =
      __$$_AircraftTypesStateCopyWithImpl<$Res>;
  @override
  $Res call({StateStatus status, List<AircraftType> aircraftTypes});

  @override
  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_AircraftTypesStateCopyWithImpl<$Res>
    extends _$AircraftTypesStateCopyWithImpl<$Res>
    implements _$$_AircraftTypesStateCopyWith<$Res> {
  __$$_AircraftTypesStateCopyWithImpl(
      _$_AircraftTypesState _value, $Res Function(_$_AircraftTypesState) _then)
      : super(_value, (v) => _then(v as _$_AircraftTypesState));

  @override
  _$_AircraftTypesState get _value => super._value as _$_AircraftTypesState;

  @override
  $Res call({
    Object? status = freezed,
    Object? aircraftTypes = freezed,
  }) {
    return _then(_$_AircraftTypesState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      aircraftTypes: aircraftTypes == freezed
          ? _value._aircraftTypes
          : aircraftTypes // ignore: cast_nullable_to_non_nullable
              as List<AircraftType>,
    ));
  }
}

/// @nodoc

class _$_AircraftTypesState implements _AircraftTypesState {
  const _$_AircraftTypesState(
      {this.status = const StateStatus(),
      final List<AircraftType> aircraftTypes = const []})
      : _aircraftTypes = aircraftTypes;

  @override
  @JsonKey()
  final StateStatus status;
  final List<AircraftType> _aircraftTypes;
  @override
  @JsonKey()
  List<AircraftType> get aircraftTypes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_aircraftTypes);
  }

  @override
  String toString() {
    return 'AircraftTypesState(status: $status, aircraftTypes: $aircraftTypes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AircraftTypesState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other._aircraftTypes, _aircraftTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_aircraftTypes));

  @JsonKey(ignore: true)
  @override
  _$$_AircraftTypesStateCopyWith<_$_AircraftTypesState> get copyWith =>
      __$$_AircraftTypesStateCopyWithImpl<_$_AircraftTypesState>(
          this, _$identity);
}

abstract class _AircraftTypesState implements AircraftTypesState {
  const factory _AircraftTypesState(
      {final StateStatus status,
      final List<AircraftType> aircraftTypes}) = _$_AircraftTypesState;

  @override
  StateStatus get status;
  @override
  List<AircraftType> get aircraftTypes;
  @override
  @JsonKey(ignore: true)
  _$$_AircraftTypesStateCopyWith<_$_AircraftTypesState> get copyWith =>
      throw _privateConstructorUsedError;
}
