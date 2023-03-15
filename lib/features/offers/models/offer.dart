import 'package:flyday_broker/features/aircrafts/models/aircraft_info.dart';
import 'package:flyday_broker/features/currencies/models/currency.dart';
import 'package:flyday_broker/features/special_conditions/models/special_condition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/utils/duration.dart';

part 'offer.freezed.dart';
part 'offer.g.dart';

@freezed
class Offer with _$Offer {
  const Offer._();
  const factory Offer({
    required int id,
    required String price,
    @JsonKey(name: 'currency') required Currency currency,
    @JsonKey(name: 'price_profile') required String priceProfile,
    @JsonKey(name: 'flight_hour') required int flightHour,
    @JsonKey(name: 'flight_minute') required int flightMinute,
    @JsonKey(name: 'time_to_fly') required DateTime flightDateTime,
    @JsonKey(name: 'valid_until') required DateTime validUntil,
    @JsonKey(name: 'refueling') required int refuelingsNumber,
    @JsonKey(name: 'general_note') required String generalNote,
    @JsonKey(name: 'convenience', defaultValue: []) required List<SpecialCondition> conditions,
    @JsonKey(name: 'ad') required int adId,
    AircraftInfo? aircraft,
    // @JsonKey(name: 'photos', defaultValue: []) required List<AircraftImage> images,
  }) = _Offer;

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);

  String get priceWithCurrency => '${currency.symbol} $price';
  String get flightTime => durationToString(Duration(hours: flightHour, minutes: flightMinute));
}
