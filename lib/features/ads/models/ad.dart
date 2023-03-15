import 'package:flyday_broker/features/ads/models/ad_status.dart';
import 'package:flyday_broker/features/ads/models/route_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'ad_type.dart';

part 'ad.freezed.dart';
part 'ad.g.dart';

@freezed
class Ad with _$Ad {
  const factory Ad({
    required int id,
    @JsonKey(name: 'ad_type') required AdType type,
    @JsonKey(name: 'status', defaultValue: AdStatus.all) required AdStatus status,
    @JsonKey(name: 'route_details', defaultValue: []) required List<RouteDetail> routeDetails,
    @JsonKey(name: 'chat_id', defaultValue: 0) required int chatId,
    @JsonKey(name: 'unread_message', defaultValue: false) required bool hasUnreadMessages,
    @JsonKey(name: 'count_brokers', defaultValue: 0) required int brokersWhoResponsed,
    @JsonKey(name: 'map_image', defaultValue: '') required String mapImage,
  }) = _Ad;

  factory Ad.fromJson(Map<String, dynamic> json) => _$AdFromJson(json);
}
