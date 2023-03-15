import 'package:freezed_annotation/freezed_annotation.dart';

import 'offer_to_post_aircraft.dart';
import 'offer_to_post_offer.dart';

part 'offer_to_post.freezed.dart';
part 'offer_to_post.g.dart';

@freezed
class OfferToPost with _$OfferToPost {
  factory OfferToPost({
    required OfferToPostOffer offer,
    required OfferToPostAircraft aircraft,
  }) = _OfferToPost;

  factory OfferToPost.fromJson(Map<String, dynamic> json) => _$OfferToPostFromJson(json);
}
