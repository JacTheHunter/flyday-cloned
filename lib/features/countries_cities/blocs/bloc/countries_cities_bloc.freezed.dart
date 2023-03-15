// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'countries_cities_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CountriesCitiesEvent {
  bool? get more => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetchCountries,
    required TResult Function(int coutryId, bool? more) fetchCities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetchCountries,
    TResult Function(int coutryId, bool? more)? fetchCities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetchCountries,
    TResult Function(int coutryId, bool? more)? fetchCities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCountries value) fetchCountries,
    required TResult Function(_FetchCities value) fetchCities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchCountries value)? fetchCountries,
    TResult Function(_FetchCities value)? fetchCities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCountries value)? fetchCountries,
    TResult Function(_FetchCities value)? fetchCities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountriesCitiesEventCopyWith<CountriesCitiesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesCitiesEventCopyWith<$Res> {
  factory $CountriesCitiesEventCopyWith(CountriesCitiesEvent value,
          $Res Function(CountriesCitiesEvent) then) =
      _$CountriesCitiesEventCopyWithImpl<$Res>;
  $Res call({bool? more});
}

/// @nodoc
class _$CountriesCitiesEventCopyWithImpl<$Res>
    implements $CountriesCitiesEventCopyWith<$Res> {
  _$CountriesCitiesEventCopyWithImpl(this._value, this._then);

  final CountriesCitiesEvent _value;
  // ignore: unused_field
  final $Res Function(CountriesCitiesEvent) _then;

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
abstract class _$$_FetchCountriesCopyWith<$Res>
    implements $CountriesCitiesEventCopyWith<$Res> {
  factory _$$_FetchCountriesCopyWith(
          _$_FetchCountries value, $Res Function(_$_FetchCountries) then) =
      __$$_FetchCountriesCopyWithImpl<$Res>;
  @override
  $Res call({bool? more});
}

/// @nodoc
class __$$_FetchCountriesCopyWithImpl<$Res>
    extends _$CountriesCitiesEventCopyWithImpl<$Res>
    implements _$$_FetchCountriesCopyWith<$Res> {
  __$$_FetchCountriesCopyWithImpl(
      _$_FetchCountries _value, $Res Function(_$_FetchCountries) _then)
      : super(_value, (v) => _then(v as _$_FetchCountries));

  @override
  _$_FetchCountries get _value => super._value as _$_FetchCountries;

  @override
  $Res call({
    Object? more = freezed,
  }) {
    return _then(_$_FetchCountries(
      more == freezed
          ? _value.more
          : more // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_FetchCountries implements _FetchCountries {
  const _$_FetchCountries([this.more]);

  @override
  final bool? more;

  @override
  String toString() {
    return 'CountriesCitiesEvent.fetchCountries(more: $more)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchCountries &&
            const DeepCollectionEquality().equals(other.more, more));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(more));

  @JsonKey(ignore: true)
  @override
  _$$_FetchCountriesCopyWith<_$_FetchCountries> get copyWith =>
      __$$_FetchCountriesCopyWithImpl<_$_FetchCountries>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetchCountries,
    required TResult Function(int coutryId, bool? more) fetchCities,
  }) {
    return fetchCountries(more);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetchCountries,
    TResult Function(int coutryId, bool? more)? fetchCities,
  }) {
    return fetchCountries?.call(more);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetchCountries,
    TResult Function(int coutryId, bool? more)? fetchCities,
    required TResult orElse(),
  }) {
    if (fetchCountries != null) {
      return fetchCountries(more);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCountries value) fetchCountries,
    required TResult Function(_FetchCities value) fetchCities,
  }) {
    return fetchCountries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchCountries value)? fetchCountries,
    TResult Function(_FetchCities value)? fetchCities,
  }) {
    return fetchCountries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCountries value)? fetchCountries,
    TResult Function(_FetchCities value)? fetchCities,
    required TResult orElse(),
  }) {
    if (fetchCountries != null) {
      return fetchCountries(this);
    }
    return orElse();
  }
}

abstract class _FetchCountries implements CountriesCitiesEvent {
  const factory _FetchCountries([final bool? more]) = _$_FetchCountries;

  @override
  bool? get more;
  @override
  @JsonKey(ignore: true)
  _$$_FetchCountriesCopyWith<_$_FetchCountries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchCitiesCopyWith<$Res>
    implements $CountriesCitiesEventCopyWith<$Res> {
  factory _$$_FetchCitiesCopyWith(
          _$_FetchCities value, $Res Function(_$_FetchCities) then) =
      __$$_FetchCitiesCopyWithImpl<$Res>;
  @override
  $Res call({int coutryId, bool? more});
}

/// @nodoc
class __$$_FetchCitiesCopyWithImpl<$Res>
    extends _$CountriesCitiesEventCopyWithImpl<$Res>
    implements _$$_FetchCitiesCopyWith<$Res> {
  __$$_FetchCitiesCopyWithImpl(
      _$_FetchCities _value, $Res Function(_$_FetchCities) _then)
      : super(_value, (v) => _then(v as _$_FetchCities));

  @override
  _$_FetchCities get _value => super._value as _$_FetchCities;

  @override
  $Res call({
    Object? coutryId = freezed,
    Object? more = freezed,
  }) {
    return _then(_$_FetchCities(
      coutryId == freezed
          ? _value.coutryId
          : coutryId // ignore: cast_nullable_to_non_nullable
              as int,
      more == freezed
          ? _value.more
          : more // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_FetchCities implements _FetchCities {
  const _$_FetchCities(this.coutryId, [this.more]);

  @override
  final int coutryId;
  @override
  final bool? more;

  @override
  String toString() {
    return 'CountriesCitiesEvent.fetchCities(coutryId: $coutryId, more: $more)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchCities &&
            const DeepCollectionEquality().equals(other.coutryId, coutryId) &&
            const DeepCollectionEquality().equals(other.more, more));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(coutryId),
      const DeepCollectionEquality().hash(more));

  @JsonKey(ignore: true)
  @override
  _$$_FetchCitiesCopyWith<_$_FetchCities> get copyWith =>
      __$$_FetchCitiesCopyWithImpl<_$_FetchCities>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetchCountries,
    required TResult Function(int coutryId, bool? more) fetchCities,
  }) {
    return fetchCities(coutryId, more);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetchCountries,
    TResult Function(int coutryId, bool? more)? fetchCities,
  }) {
    return fetchCities?.call(coutryId, more);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetchCountries,
    TResult Function(int coutryId, bool? more)? fetchCities,
    required TResult orElse(),
  }) {
    if (fetchCities != null) {
      return fetchCities(coutryId, more);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCountries value) fetchCountries,
    required TResult Function(_FetchCities value) fetchCities,
  }) {
    return fetchCities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchCountries value)? fetchCountries,
    TResult Function(_FetchCities value)? fetchCities,
  }) {
    return fetchCities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCountries value)? fetchCountries,
    TResult Function(_FetchCities value)? fetchCities,
    required TResult orElse(),
  }) {
    if (fetchCities != null) {
      return fetchCities(this);
    }
    return orElse();
  }
}

abstract class _FetchCities implements CountriesCitiesEvent {
  const factory _FetchCities(final int coutryId, [final bool? more]) =
      _$_FetchCities;

  int get coutryId;
  @override
  bool? get more;
  @override
  @JsonKey(ignore: true)
  _$$_FetchCitiesCopyWith<_$_FetchCities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CountriesCitiesState {
  StateStatus get status => throw _privateConstructorUsedError;
  List<Country> get countries => throw _privateConstructorUsedError;
  List<City> get cities => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountriesCitiesStateCopyWith<CountriesCitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesCitiesStateCopyWith<$Res> {
  factory $CountriesCitiesStateCopyWith(CountriesCitiesState value,
          $Res Function(CountriesCitiesState) then) =
      _$CountriesCitiesStateCopyWithImpl<$Res>;
  $Res call({StateStatus status, List<Country> countries, List<City> cities});

  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$CountriesCitiesStateCopyWithImpl<$Res>
    implements $CountriesCitiesStateCopyWith<$Res> {
  _$CountriesCitiesStateCopyWithImpl(this._value, this._then);

  final CountriesCitiesState _value;
  // ignore: unused_field
  final $Res Function(CountriesCitiesState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? countries = freezed,
    Object? cities = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      cities: cities == freezed
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
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
abstract class _$$_CountriesCitiesStateCopyWith<$Res>
    implements $CountriesCitiesStateCopyWith<$Res> {
  factory _$$_CountriesCitiesStateCopyWith(_$_CountriesCitiesState value,
          $Res Function(_$_CountriesCitiesState) then) =
      __$$_CountriesCitiesStateCopyWithImpl<$Res>;
  @override
  $Res call({StateStatus status, List<Country> countries, List<City> cities});

  @override
  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_CountriesCitiesStateCopyWithImpl<$Res>
    extends _$CountriesCitiesStateCopyWithImpl<$Res>
    implements _$$_CountriesCitiesStateCopyWith<$Res> {
  __$$_CountriesCitiesStateCopyWithImpl(_$_CountriesCitiesState _value,
      $Res Function(_$_CountriesCitiesState) _then)
      : super(_value, (v) => _then(v as _$_CountriesCitiesState));

  @override
  _$_CountriesCitiesState get _value => super._value as _$_CountriesCitiesState;

  @override
  $Res call({
    Object? status = freezed,
    Object? countries = freezed,
    Object? cities = freezed,
  }) {
    return _then(_$_CountriesCitiesState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      countries: countries == freezed
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      cities: cities == freezed
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
    ));
  }
}

/// @nodoc

class _$_CountriesCitiesState implements _CountriesCitiesState {
  const _$_CountriesCitiesState(
      {this.status = const StateStatus(),
      final List<Country> countries = const [],
      final List<City> cities = const []})
      : _countries = countries,
        _cities = cities;

  @override
  @JsonKey()
  final StateStatus status;
  final List<Country> _countries;
  @override
  @JsonKey()
  List<Country> get countries {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  final List<City> _cities;
  @override
  @JsonKey()
  List<City> get cities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  String toString() {
    return 'CountriesCitiesState(status: $status, countries: $countries, cities: $cities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountriesCitiesState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            const DeepCollectionEquality().equals(other._cities, _cities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_countries),
      const DeepCollectionEquality().hash(_cities));

  @JsonKey(ignore: true)
  @override
  _$$_CountriesCitiesStateCopyWith<_$_CountriesCitiesState> get copyWith =>
      __$$_CountriesCitiesStateCopyWithImpl<_$_CountriesCitiesState>(
          this, _$identity);
}

abstract class _CountriesCitiesState implements CountriesCitiesState {
  const factory _CountriesCitiesState(
      {final StateStatus status,
      final List<Country> countries,
      final List<City> cities}) = _$_CountriesCitiesState;

  @override
  StateStatus get status;
  @override
  List<Country> get countries;
  @override
  List<City> get cities;
  @override
  @JsonKey(ignore: true)
  _$$_CountriesCitiesStateCopyWith<_$_CountriesCitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}
