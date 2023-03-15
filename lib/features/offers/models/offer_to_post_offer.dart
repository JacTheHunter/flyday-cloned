import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_to_post_offer.freezed.dart';
part 'offer_to_post_offer.g.dart';

@freezed
class OfferToPostOffer with _$OfferToPostOffer {
  factory OfferToPostOffer({
    required String price,
    @JsonKey(name: 'currency') required int currencyId,
    @JsonKey(name: 'flight_hour') required int flightHour,
    @JsonKey(name: 'flight_minute') required int flightMinute,
    @JsonKey(name: 'time_to_fly') required DateTime flightDateTime,
    @JsonKey(name: 'valid_until') required DateTime validUntil,
    @JsonKey(name: 'refueling') required int refuelingsNumber,
    @JsonKey(name: 'general_note') required String generalNote,
    @JsonKey(name: 'convenience') required List<int> conveniences,
    @JsonKey(name: 'ad') required int adId,
  }) = _OfferToPostOffer;

  factory OfferToPostOffer.fromJson(Map<String, dynamic> json) => _$OfferToPostOfferFromJson(json);
}
