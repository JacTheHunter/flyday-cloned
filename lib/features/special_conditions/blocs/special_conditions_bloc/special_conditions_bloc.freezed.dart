// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'special_conditions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SpecialConditionsEvent {
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
  $SpecialConditionsEventCopyWith<SpecialConditionsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialConditionsEventCopyWith<$Res> {
  factory $SpecialConditionsEventCopyWith(SpecialConditionsEvent value,
          $Res Function(SpecialConditionsEvent) then) =
      _$SpecialConditionsEventCopyWithImpl<$Res>;
  $Res call({bool? more});
}

/// @nodoc
class _$SpecialConditionsEventCopyWithImpl<$Res>
    implements $SpecialConditionsEventCopyWith<$Res> {
  _$SpecialConditionsEventCopyWithImpl(this._value, this._then);

  final SpecialConditionsEvent _value;
  // ignore: unused_field
  final $Res Function(SpecialConditionsEvent) _then;

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
    implements $SpecialConditionsEventCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
  @override
  $Res call({bool? more});
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res>
    extends _$SpecialConditionsEventCopyWithImpl<$Res>
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
    return 'SpecialConditionsEvent.fetch(more: $more)';
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

abstract class _Fetch implements SpecialConditionsEvent {
  const factory _Fetch([final bool? more]) = _$_Fetch;

  @override
  bool? get more;
  @override
  @JsonKey(ignore: true)
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SpecialConditionsState {
  StateStatus get status => throw _privateConstructorUsedError;
  List<SpecialCondition> get specialConditions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpecialConditionsStateCopyWith<SpecialConditionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialConditionsStateCopyWith<$Res> {
  factory $SpecialConditionsStateCopyWith(SpecialConditionsState value,
          $Res Function(SpecialConditionsState) then) =
      _$SpecialConditionsStateCopyWithImpl<$Res>;
  $Res call({StateStatus status, List<SpecialCondition> specialConditions});

  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$SpecialConditionsStateCopyWithImpl<$Res>
    implements $SpecialConditionsStateCopyWith<$Res> {
  _$SpecialConditionsStateCopyWithImpl(this._value, this._then);

  final SpecialConditionsState _value;
  // ignore: unused_field
  final $Res Function(SpecialConditionsState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? specialConditions = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      specialConditions: specialConditions == freezed
          ? _value.specialConditions
          : specialConditions // ignore: cast_nullable_to_non_nullable
              as List<SpecialCondition>,
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
abstract class _$$_SpecialConditionsStateCopyWith<$Res>
    implements $SpecialConditionsStateCopyWith<$Res> {
  factory _$$_SpecialConditionsStateCopyWith(_$_SpecialConditionsState value,
          $Res Function(_$_SpecialConditionsState) then) =
      __$$_SpecialConditionsStateCopyWithImpl<$Res>;
  @override
  $Res call({StateStatus status, List<SpecialCondition> specialConditions});

  @override
  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_SpecialConditionsStateCopyWithImpl<$Res>
    extends _$SpecialConditionsStateCopyWithImpl<$Res>
    implements _$$_SpecialConditionsStateCopyWith<$Res> {
  __$$_SpecialConditionsStateCopyWithImpl(_$_SpecialConditionsState _value,
      $Res Function(_$_SpecialConditionsState) _then)
      : super(_value, (v) => _then(v as _$_SpecialConditionsState));

  @override
  _$_SpecialConditionsState get _value =>
      super._value as _$_SpecialConditionsState;

  @override
  $Res call({
    Object? status = freezed,
    Object? specialConditions = freezed,
  }) {
    return _then(_$_SpecialConditionsState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      specialConditions: specialConditions == freezed
          ? _value._specialConditions
          : specialConditions // ignore: cast_nullable_to_non_nullable
              as List<SpecialCondition>,
    ));
  }
}

/// @nodoc

class _$_SpecialConditionsState implements _SpecialConditionsState {
  const _$_SpecialConditionsState(
      {this.status = const StateStatus(),
      final List<SpecialCondition> specialConditions = const []})
      : _specialConditions = specialConditions;

  @override
  @JsonKey()
  final StateStatus status;
  final List<SpecialCondition> _specialConditions;
  @override
  @JsonKey()
  List<SpecialCondition> get specialConditions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specialConditions);
  }

  @override
  String toString() {
    return 'SpecialConditionsState(status: $status, specialConditions: $specialConditions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpecialConditionsState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other._specialConditions, _specialConditions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_specialConditions));

  @JsonKey(ignore: true)
  @override
  _$$_SpecialConditionsStateCopyWith<_$_SpecialConditionsState> get copyWith =>
      __$$_SpecialConditionsStateCopyWithImpl<_$_SpecialConditionsState>(
          this, _$identity);
}

abstract class _SpecialConditionsState implements SpecialConditionsState {
  const factory _SpecialConditionsState(
          {final StateStatus status,
          final List<SpecialCondition> specialConditions}) =
      _$_SpecialConditionsState;

  @override
  StateStatus get status;
  @override
  List<SpecialCondition> get specialConditions;
  @override
  @JsonKey(ignore: true)
  _$$_SpecialConditionsStateCopyWith<_$_SpecialConditionsState> get copyWith =>
      throw _privateConstructorUsedError;
}
