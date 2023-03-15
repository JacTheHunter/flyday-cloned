// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'route_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RouteDetail _$RouteDetailFromJson(Map<String, dynamic> json) {
  return _RouteDetail.fromJson(json);
}

/// @nodoc
mixin _$RouteDetail {
  @JsonKey(name: 'special_conditions', defaultValue: [])
  List<SpecialCondition> get specialConditions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_passengers', defaultValue: 0)
  int get numberOfPassengers => throw _privateConstructorUsedError;
  @JsonKey(name: 'departure_date')
  DateTime get departureDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'from_where')
  Airport get fromWhere => throw _privateConstructorUsedError;
  @JsonKey(name: 'to_where')
  Airport get toWhere => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RouteDetailCopyWith<RouteDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteDetailCopyWith<$Res> {
  factory $RouteDetailCopyWith(
          RouteDetail value, $Res Function(RouteDetail) then) =
      _$RouteDetailCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'special_conditions', defaultValue: [])
          List<SpecialCondition> specialConditions,
      @JsonKey(name: 'number_of_passengers', defaultValue: 0)
          int numberOfPassengers,
      @JsonKey(name: 'departure_date')
          DateTime departureDate,
      @JsonKey(name: 'from_where')
          Airport fromWhere,
      @JsonKey(name: 'to_where')
          Airport toWhere});

  $AirportCopyWith<$Res> get fromWhere;
  $AirportCopyWith<$Res> get toWhere;
}

/// @nodoc
class _$RouteDetailCopyWithImpl<$Res> implements $RouteDetailCopyWith<$Res> {
  _$RouteDetailCopyWithImpl(this._value, this._then);

  final RouteDetail _value;
  // ignore: unused_field
  final $Res Function(RouteDetail) _then;

  @override
  $Res call({
    Object? specialConditions = freezed,
    Object? numberOfPassengers = freezed,
    Object? departureDate = freezed,
    Object? fromWhere = freezed,
    Object? toWhere = freezed,
  }) {
    return _then(_value.copyWith(
      specialConditions: specialConditions == freezed
          ? _value.specialConditions
          : specialConditions // ignore: cast_nullable_to_non_nullable
              as List<SpecialCondition>,
      numberOfPassengers: numberOfPassengers == freezed
          ? _value.numberOfPassengers
          : numberOfPassengers // ignore: cast_nullable_to_non_nullable
              as int,
      departureDate: departureDate == freezed
          ? _value.departureDate
          : departureDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fromWhere: fromWhere == freezed
          ? _value.fromWhere
          : fromWhere // ignore: cast_nullable_to_non_nullable
              as Airport,
      toWhere: toWhere == freezed
          ? _value.toWhere
          : toWhere // ignore: cast_nullable_to_non_nullable
              as Airport,
    ));
  }

  @override
  $AirportCopyWith<$Res> get fromWhere {
    return $AirportCopyWith<$Res>(_value.fromWhere, (value) {
      return _then(_value.copyWith(fromWhere: value));
    });
  }

  @override
  $AirportCopyWith<$Res> get toWhere {
    return $AirportCopyWith<$Res>(_value.toWhere, (value) {
      return _then(_value.copyWith(toWhere: value));
    });
  }
}

/// @nodoc
abstract class _$$_RouteDetailCopyWith<$Res>
    implements $RouteDetailCopyWith<$Res> {
  factory _$$_RouteDetailCopyWith(
          _$_RouteDetail value, $Res Function(_$_RouteDetail) then) =
      __$$_RouteDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'special_conditions', defaultValue: [])
          List<SpecialCondition> specialConditions,
      @JsonKey(name: 'number_of_passengers', defaultValue: 0)
          int numberOfPassengers,
      @JsonKey(name: 'departure_date')
          DateTime departureDate,
      @JsonKey(name: 'from_where')
          Airport fromWhere,
      @JsonKey(name: 'to_where')
          Airport toWhere});

  @override
  $AirportCopyWith<$Res> get fromWhere;
  @override
  $AirportCopyWith<$Res> get toWhere;
}

/// @nodoc
class __$$_RouteDetailCopyWithImpl<$Res> extends _$RouteDetailCopyWithImpl<$Res>
    implements _$$_RouteDetailCopyWith<$Res> {
  __$$_RouteDetailCopyWithImpl(
      _$_RouteDetail _value, $Res Function(_$_RouteDetail) _then)
      : super(_value, (v) => _then(v as _$_RouteDetail));

  @override
  _$_RouteDetail get _value => super._value as _$_RouteDetail;

  @override
  $Res call({
    Object? specialConditions = freezed,
    Object? numberOfPassengers = freezed,
    Object? departureDate = freezed,
    Object? fromWhere = freezed,
    Object? toWhere = freezed,
  }) {
    return _then(_$_RouteDetail(
      specialConditions: specialConditions == freezed
          ? _value._specialConditions
          : specialConditions // ignore: cast_nullable_to_non_nullable
              as List<SpecialCondition>,
      numberOfPassengers: numberOfPassengers == freezed
          ? _value.numberOfPassengers
          : numberOfPassengers // ignore: cast_nullable_to_non_nullable
              as int,
      departureDate: departureDate == freezed
          ? _value.departureDate
          : departureDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fromWhere: fromWhere == freezed
          ? _value.fromWhere
          : fromWhere // ignore: cast_nullable_to_non_nullable
              as Airport,
      toWhere: toWhere == freezed
          ? _value.toWhere
          : toWhere // ignore: cast_nullable_to_non_nullable
              as Airport,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RouteDetail implements _RouteDetail {
  _$_RouteDetail(
      {@JsonKey(name: 'special_conditions', defaultValue: [])
          required final List<SpecialCondition> specialConditions,
      @JsonKey(name: 'number_of_passengers', defaultValue: 0)
          required this.numberOfPassengers,
      @JsonKey(name: 'departure_date')
          required this.departureDate,
      @JsonKey(name: 'from_where')
          required this.fromWhere,
      @JsonKey(name: 'to_where')
          required this.toWhere})
      : _specialConditions = specialConditions;

  factory _$_RouteDetail.fromJson(Map<String, dynamic> json) =>
      _$$_RouteDetailFromJson(json);

  final List<SpecialCondition> _specialConditions;
  @override
  @JsonKey(name: 'special_conditions', defaultValue: [])
  List<SpecialCondition> get specialConditions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specialConditions);
  }

  @override
  @JsonKey(name: 'number_of_passengers', defaultValue: 0)
  final int numberOfPassengers;
  @override
  @JsonKey(name: 'departure_date')
  final DateTime departureDate;
  @override
  @JsonKey(name: 'from_where')
  final Airport fromWhere;
  @override
  @JsonKey(name: 'to_where')
  final Airport toWhere;

  @override
  String toString() {
    return 'RouteDetail(specialConditions: $specialConditions, numberOfPassengers: $numberOfPassengers, departureDate: $departureDate, fromWhere: $fromWhere, toWhere: $toWhere)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RouteDetail &&
            const DeepCollectionEquality()
                .equals(other._specialConditions, _specialConditions) &&
            const DeepCollectionEquality()
                .equals(other.numberOfPassengers, numberOfPassengers) &&
            const DeepCollectionEquality()
                .equals(other.departureDate, departureDate) &&
            const DeepCollectionEquality().equals(other.fromWhere, fromWhere) &&
            const DeepCollectionEquality().equals(other.toWhere, toWhere));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_specialConditions),
      const DeepCollectionEquality().hash(numberOfPassengers),
      const DeepCollectionEquality().hash(departureDate),
      const DeepCollectionEquality().hash(fromWhere),
      const DeepCollectionEquality().hash(toWhere));

  @JsonKey(ignore: true)
  @override
  _$$_RouteDetailCopyWith<_$_RouteDetail> get copyWith =>
      __$$_RouteDetailCopyWithImpl<_$_RouteDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RouteDetailToJson(
      this,
    );
  }
}

abstract class _RouteDetail implements RouteDetail {
  factory _RouteDetail(
      {@JsonKey(name: 'special_conditions', defaultValue: [])
          required final List<SpecialCondition> specialConditions,
      @JsonKey(name: 'number_of_passengers', defaultValue: 0)
          required final int numberOfPassengers,
      @JsonKey(name: 'departure_date')
          required final DateTime departureDate,
      @JsonKey(name: 'from_where')
          required final Airport fromWhere,
      @JsonKey(name: 'to_where')
          required final Airport toWhere}) = _$_RouteDetail;

  factory _RouteDetail.fromJson(Map<String, dynamic> json) =
      _$_RouteDetail.fromJson;

  @override
  @JsonKey(name: 'special_conditions', defaultValue: [])
  List<SpecialCondition> get specialConditions;
  @override
  @JsonKey(name: 'number_of_passengers', defaultValue: 0)
  int get numberOfPassengers;
  @override
  @JsonKey(name: 'departure_date')
  DateTime get departureDate;
  @override
  @JsonKey(name: 'from_where')
  Airport get fromWhere;
  @override
  @JsonKey(name: 'to_where')
  Airport get toWhere;
  @override
  @JsonKey(ignore: true)
  _$$_RouteDetailCopyWith<_$_RouteDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
