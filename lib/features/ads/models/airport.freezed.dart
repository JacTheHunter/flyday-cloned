// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'airport.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Airport _$AirportFromJson(Map<String, dynamic> json) {
  return _Airport.fromJson(json);
}

/// @nodoc
mixin _$Airport {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'iata_code')
  String get iataCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'icao_code')
  String get icaoCode => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  Country get country => throw _privateConstructorUsedError;
  City get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AirportCopyWith<Airport> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirportCopyWith<$Res> {
  factory $AirportCopyWith(Airport value, $Res Function(Airport) then) =
      _$AirportCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'iata_code') String iataCode,
      @JsonKey(name: 'icao_code') String icaoCode,
      String latitude,
      String longitude,
      Country country,
      City city});

  $CountryCopyWith<$Res> get country;
  $CityCopyWith<$Res> get city;
}

/// @nodoc
class _$AirportCopyWithImpl<$Res> implements $AirportCopyWith<$Res> {
  _$AirportCopyWithImpl(this._value, this._then);

  final Airport _value;
  // ignore: unused_field
  final $Res Function(Airport) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? iataCode = freezed,
    Object? icaoCode = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? country = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iataCode: iataCode == freezed
          ? _value.iataCode
          : iataCode // ignore: cast_nullable_to_non_nullable
              as String,
      icaoCode: icaoCode == freezed
          ? _value.icaoCode
          : icaoCode // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
    ));
  }

  @override
  $CountryCopyWith<$Res> get country {
    return $CountryCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value));
    });
  }

  @override
  $CityCopyWith<$Res> get city {
    return $CityCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value));
    });
  }
}

/// @nodoc
abstract class _$$_AirportCopyWith<$Res> implements $AirportCopyWith<$Res> {
  factory _$$_AirportCopyWith(
          _$_Airport value, $Res Function(_$_Airport) then) =
      __$$_AirportCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'iata_code') String iataCode,
      @JsonKey(name: 'icao_code') String icaoCode,
      String latitude,
      String longitude,
      Country country,
      City city});

  @override
  $CountryCopyWith<$Res> get country;
  @override
  $CityCopyWith<$Res> get city;
}

/// @nodoc
class __$$_AirportCopyWithImpl<$Res> extends _$AirportCopyWithImpl<$Res>
    implements _$$_AirportCopyWith<$Res> {
  __$$_AirportCopyWithImpl(_$_Airport _value, $Res Function(_$_Airport) _then)
      : super(_value, (v) => _then(v as _$_Airport));

  @override
  _$_Airport get _value => super._value as _$_Airport;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? iataCode = freezed,
    Object? icaoCode = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? country = freezed,
    Object? city = freezed,
  }) {
    return _then(_$_Airport(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iataCode: iataCode == freezed
          ? _value.iataCode
          : iataCode // ignore: cast_nullable_to_non_nullable
              as String,
      icaoCode: icaoCode == freezed
          ? _value.icaoCode
          : icaoCode // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Airport implements _Airport {
  _$_Airport(
      {required this.id,
      required this.name,
      @JsonKey(name: 'iata_code') required this.iataCode,
      @JsonKey(name: 'icao_code') required this.icaoCode,
      required this.latitude,
      required this.longitude,
      required this.country,
      required this.city});

  factory _$_Airport.fromJson(Map<String, dynamic> json) =>
      _$$_AirportFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'iata_code')
  final String iataCode;
  @override
  @JsonKey(name: 'icao_code')
  final String icaoCode;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final Country country;
  @override
  final City city;

  @override
  String toString() {
    return 'Airport(id: $id, name: $name, iataCode: $iataCode, icaoCode: $icaoCode, latitude: $latitude, longitude: $longitude, country: $country, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Airport &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.iataCode, iataCode) &&
            const DeepCollectionEquality().equals(other.icaoCode, icaoCode) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.city, city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(iataCode),
      const DeepCollectionEquality().hash(icaoCode),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(city));

  @JsonKey(ignore: true)
  @override
  _$$_AirportCopyWith<_$_Airport> get copyWith =>
      __$$_AirportCopyWithImpl<_$_Airport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AirportToJson(
      this,
    );
  }
}

abstract class _Airport implements Airport {
  factory _Airport(
      {required final int id,
      required final String name,
      @JsonKey(name: 'iata_code') required final String iataCode,
      @JsonKey(name: 'icao_code') required final String icaoCode,
      required final String latitude,
      required final String longitude,
      required final Country country,
      required final City city}) = _$_Airport;

  factory _Airport.fromJson(Map<String, dynamic> json) = _$_Airport.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'iata_code')
  String get iataCode;
  @override
  @JsonKey(name: 'icao_code')
  String get icaoCode;
  @override
  String get latitude;
  @override
  String get longitude;
  @override
  Country get country;
  @override
  City get city;
  @override
  @JsonKey(ignore: true)
  _$$_AirportCopyWith<_$_Airport> get copyWith =>
      throw _privateConstructorUsedError;
}
