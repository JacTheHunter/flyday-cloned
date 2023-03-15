// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'offer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Offer _$OfferFromJson(Map<String, dynamic> json) {
  return _Offer.fromJson(json);
}

/// @nodoc
mixin _$Offer {
  int get id => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency')
  Currency get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_profile')
  String get priceProfile => throw _privateConstructorUsedError;
  @JsonKey(name: 'flight_hour')
  int get flightHour => throw _privateConstructorUsedError;
  @JsonKey(name: 'flight_minute')
  int get flightMinute => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_to_fly')
  DateTime get flightDateTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'valid_until')
  DateTime get validUntil => throw _privateConstructorUsedError;
  @JsonKey(name: 'refueling')
  int get refuelingsNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'general_note')
  String get generalNote => throw _privateConstructorUsedError;
  @JsonKey(name: 'convenience', defaultValue: [])
  List<SpecialCondition> get conditions => throw _privateConstructorUsedError;
  @JsonKey(name: 'ad')
  int get adId => throw _privateConstructorUsedError;
  AircraftInfo? get aircraft => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferCopyWith<Offer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferCopyWith<$Res> {
  factory $OfferCopyWith(Offer value, $Res Function(Offer) then) =
      _$OfferCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String price,
      @JsonKey(name: 'currency')
          Currency currency,
      @JsonKey(name: 'price_profile')
          String priceProfile,
      @JsonKey(name: 'flight_hour')
          int flightHour,
      @JsonKey(name: 'flight_minute')
          int flightMinute,
      @JsonKey(name: 'time_to_fly')
          DateTime flightDateTime,
      @JsonKey(name: 'valid_until')
          DateTime validUntil,
      @JsonKey(name: 'refueling')
          int refuelingsNumber,
      @JsonKey(name: 'general_note')
          String generalNote,
      @JsonKey(name: 'convenience', defaultValue: [])
          List<SpecialCondition> conditions,
      @JsonKey(name: 'ad')
          int adId,
      AircraftInfo? aircraft});

  $CurrencyCopyWith<$Res> get currency;
  $AircraftInfoCopyWith<$Res>? get aircraft;
}

/// @nodoc
class _$OfferCopyWithImpl<$Res> implements $OfferCopyWith<$Res> {
  _$OfferCopyWithImpl(this._value, this._then);

  final Offer _value;
  // ignore: unused_field
  final $Res Function(Offer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? currency = freezed,
    Object? priceProfile = freezed,
    Object? flightHour = freezed,
    Object? flightMinute = freezed,
    Object? flightDateTime = freezed,
    Object? validUntil = freezed,
    Object? refuelingsNumber = freezed,
    Object? generalNote = freezed,
    Object? conditions = freezed,
    Object? adId = freezed,
    Object? aircraft = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      priceProfile: priceProfile == freezed
          ? _value.priceProfile
          : priceProfile // ignore: cast_nullable_to_non_nullable
              as String,
      flightHour: flightHour == freezed
          ? _value.flightHour
          : flightHour // ignore: cast_nullable_to_non_nullable
              as int,
      flightMinute: flightMinute == freezed
          ? _value.flightMinute
          : flightMinute // ignore: cast_nullable_to_non_nullable
              as int,
      flightDateTime: flightDateTime == freezed
          ? _value.flightDateTime
          : flightDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      validUntil: validUntil == freezed
          ? _value.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      refuelingsNumber: refuelingsNumber == freezed
          ? _value.refuelingsNumber
          : refuelingsNumber // ignore: cast_nullable_to_non_nullable
              as int,
      generalNote: generalNote == freezed
          ? _value.generalNote
          : generalNote // ignore: cast_nullable_to_non_nullable
              as String,
      conditions: conditions == freezed
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<SpecialCondition>,
      adId: adId == freezed
          ? _value.adId
          : adId // ignore: cast_nullable_to_non_nullable
              as int,
      aircraft: aircraft == freezed
          ? _value.aircraft
          : aircraft // ignore: cast_nullable_to_non_nullable
              as AircraftInfo?,
    ));
  }

  @override
  $CurrencyCopyWith<$Res> get currency {
    return $CurrencyCopyWith<$Res>(_value.currency, (value) {
      return _then(_value.copyWith(currency: value));
    });
  }

  @override
  $AircraftInfoCopyWith<$Res>? get aircraft {
    if (_value.aircraft == null) {
      return null;
    }

    return $AircraftInfoCopyWith<$Res>(_value.aircraft!, (value) {
      return _then(_value.copyWith(aircraft: value));
    });
  }
}

/// @nodoc
abstract class _$$_OfferCopyWith<$Res> implements $OfferCopyWith<$Res> {
  factory _$$_OfferCopyWith(_$_Offer value, $Res Function(_$_Offer) then) =
      __$$_OfferCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String price,
      @JsonKey(name: 'currency')
          Currency currency,
      @JsonKey(name: 'price_profile')
          String priceProfile,
      @JsonKey(name: 'flight_hour')
          int flightHour,
      @JsonKey(name: 'flight_minute')
          int flightMinute,
      @JsonKey(name: 'time_to_fly')
          DateTime flightDateTime,
      @JsonKey(name: 'valid_until')
          DateTime validUntil,
      @JsonKey(name: 'refueling')
          int refuelingsNumber,
      @JsonKey(name: 'general_note')
          String generalNote,
      @JsonKey(name: 'convenience', defaultValue: [])
          List<SpecialCondition> conditions,
      @JsonKey(name: 'ad')
          int adId,
      AircraftInfo? aircraft});

  @override
  $CurrencyCopyWith<$Res> get currency;
  @override
  $AircraftInfoCopyWith<$Res>? get aircraft;
}

/// @nodoc
class __$$_OfferCopyWithImpl<$Res> extends _$OfferCopyWithImpl<$Res>
    implements _$$_OfferCopyWith<$Res> {
  __$$_OfferCopyWithImpl(_$_Offer _value, $Res Function(_$_Offer) _then)
      : super(_value, (v) => _then(v as _$_Offer));

  @override
  _$_Offer get _value => super._value as _$_Offer;

  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? currency = freezed,
    Object? priceProfile = freezed,
    Object? flightHour = freezed,
    Object? flightMinute = freezed,
    Object? flightDateTime = freezed,
    Object? validUntil = freezed,
    Object? refuelingsNumber = freezed,
    Object? generalNote = freezed,
    Object? conditions = freezed,
    Object? adId = freezed,
    Object? aircraft = freezed,
  }) {
    return _then(_$_Offer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      priceProfile: priceProfile == freezed
          ? _value.priceProfile
          : priceProfile // ignore: cast_nullable_to_non_nullable
              as String,
      flightHour: flightHour == freezed
          ? _value.flightHour
          : flightHour // ignore: cast_nullable_to_non_nullable
              as int,
      flightMinute: flightMinute == freezed
          ? _value.flightMinute
          : flightMinute // ignore: cast_nullable_to_non_nullable
              as int,
      flightDateTime: flightDateTime == freezed
          ? _value.flightDateTime
          : flightDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      validUntil: validUntil == freezed
          ? _value.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      refuelingsNumber: refuelingsNumber == freezed
          ? _value.refuelingsNumber
          : refuelingsNumber // ignore: cast_nullable_to_non_nullable
              as int,
      generalNote: generalNote == freezed
          ? _value.generalNote
          : generalNote // ignore: cast_nullable_to_non_nullable
              as String,
      conditions: conditions == freezed
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<SpecialCondition>,
      adId: adId == freezed
          ? _value.adId
          : adId // ignore: cast_nullable_to_non_nullable
              as int,
      aircraft: aircraft == freezed
          ? _value.aircraft
          : aircraft // ignore: cast_nullable_to_non_nullable
              as AircraftInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Offer extends _Offer {
  const _$_Offer(
      {required this.id,
      required this.price,
      @JsonKey(name: 'currency')
          required this.currency,
      @JsonKey(name: 'price_profile')
          required this.priceProfile,
      @JsonKey(name: 'flight_hour')
          required this.flightHour,
      @JsonKey(name: 'flight_minute')
          required this.flightMinute,
      @JsonKey(name: 'time_to_fly')
          required this.flightDateTime,
      @JsonKey(name: 'valid_until')
          required this.validUntil,
      @JsonKey(name: 'refueling')
          required this.refuelingsNumber,
      @JsonKey(name: 'general_note')
          required this.generalNote,
      @JsonKey(name: 'convenience', defaultValue: [])
          required final List<SpecialCondition> conditions,
      @JsonKey(name: 'ad')
          required this.adId,
      this.aircraft})
      : _conditions = conditions,
        super._();

  factory _$_Offer.fromJson(Map<String, dynamic> json) =>
      _$$_OfferFromJson(json);

  @override
  final int id;
  @override
  final String price;
  @override
  @JsonKey(name: 'currency')
  final Currency currency;
  @override
  @JsonKey(name: 'price_profile')
  final String priceProfile;
  @override
  @JsonKey(name: 'flight_hour')
  final int flightHour;
  @override
  @JsonKey(name: 'flight_minute')
  final int flightMinute;
  @override
  @JsonKey(name: 'time_to_fly')
  final DateTime flightDateTime;
  @override
  @JsonKey(name: 'valid_until')
  final DateTime validUntil;
  @override
  @JsonKey(name: 'refueling')
  final int refuelingsNumber;
  @override
  @JsonKey(name: 'general_note')
  final String generalNote;
  final List<SpecialCondition> _conditions;
  @override
  @JsonKey(name: 'convenience', defaultValue: [])
  List<SpecialCondition> get conditions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conditions);
  }

  @override
  @JsonKey(name: 'ad')
  final int adId;
  @override
  final AircraftInfo? aircraft;

  @override
  String toString() {
    return 'Offer(id: $id, price: $price, currency: $currency, priceProfile: $priceProfile, flightHour: $flightHour, flightMinute: $flightMinute, flightDateTime: $flightDateTime, validUntil: $validUntil, refuelingsNumber: $refuelingsNumber, generalNote: $generalNote, conditions: $conditions, adId: $adId, aircraft: $aircraft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Offer &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality()
                .equals(other.priceProfile, priceProfile) &&
            const DeepCollectionEquality()
                .equals(other.flightHour, flightHour) &&
            const DeepCollectionEquality()
                .equals(other.flightMinute, flightMinute) &&
            const DeepCollectionEquality()
                .equals(other.flightDateTime, flightDateTime) &&
            const DeepCollectionEquality()
                .equals(other.validUntil, validUntil) &&
            const DeepCollectionEquality()
                .equals(other.refuelingsNumber, refuelingsNumber) &&
            const DeepCollectionEquality()
                .equals(other.generalNote, generalNote) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions) &&
            const DeepCollectionEquality().equals(other.adId, adId) &&
            const DeepCollectionEquality().equals(other.aircraft, aircraft));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(priceProfile),
      const DeepCollectionEquality().hash(flightHour),
      const DeepCollectionEquality().hash(flightMinute),
      const DeepCollectionEquality().hash(flightDateTime),
      const DeepCollectionEquality().hash(validUntil),
      const DeepCollectionEquality().hash(refuelingsNumber),
      const DeepCollectionEquality().hash(generalNote),
      const DeepCollectionEquality().hash(_conditions),
      const DeepCollectionEquality().hash(adId),
      const DeepCollectionEquality().hash(aircraft));

  @JsonKey(ignore: true)
  @override
  _$$_OfferCopyWith<_$_Offer> get copyWith =>
      __$$_OfferCopyWithImpl<_$_Offer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferToJson(
      this,
    );
  }
}

abstract class _Offer extends Offer {
  const factory _Offer(
      {required final int id,
      required final String price,
      @JsonKey(name: 'currency')
          required final Currency currency,
      @JsonKey(name: 'price_profile')
          required final String priceProfile,
      @JsonKey(name: 'flight_hour')
          required final int flightHour,
      @JsonKey(name: 'flight_minute')
          required final int flightMinute,
      @JsonKey(name: 'time_to_fly')
          required final DateTime flightDateTime,
      @JsonKey(name: 'valid_until')
          required final DateTime validUntil,
      @JsonKey(name: 'refueling')
          required final int refuelingsNumber,
      @JsonKey(name: 'general_note')
          required final String generalNote,
      @JsonKey(name: 'convenience', defaultValue: [])
          required final List<SpecialCondition> conditions,
      @JsonKey(name: 'ad')
          required final int adId,
      final AircraftInfo? aircraft}) = _$_Offer;
  const _Offer._() : super._();

  factory _Offer.fromJson(Map<String, dynamic> json) = _$_Offer.fromJson;

  @override
  int get id;
  @override
  String get price;
  @override
  @JsonKey(name: 'currency')
  Currency get currency;
  @override
  @JsonKey(name: 'price_profile')
  String get priceProfile;
  @override
  @JsonKey(name: 'flight_hour')
  int get flightHour;
  @override
  @JsonKey(name: 'flight_minute')
  int get flightMinute;
  @override
  @JsonKey(name: 'time_to_fly')
  DateTime get flightDateTime;
  @override
  @JsonKey(name: 'valid_until')
  DateTime get validUntil;
  @override
  @JsonKey(name: 'refueling')
  int get refuelingsNumber;
  @override
  @JsonKey(name: 'general_note')
  String get generalNote;
  @override
  @JsonKey(name: 'convenience', defaultValue: [])
  List<SpecialCondition> get conditions;
  @override
  @JsonKey(name: 'ad')
  int get adId;
  @override
  AircraftInfo? get aircraft;
  @override
  @JsonKey(ignore: true)
  _$$_OfferCopyWith<_$_Offer> get copyWith =>
      throw _privateConstructorUsedError;
}
