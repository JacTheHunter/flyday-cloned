import 'package:flyday_broker/features/ads/models/airport.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../special_conditions/models/special_condition.dart';

part 'route_detail.freezed.dart';
part 'route_detail.g.dart';

@freezed
class RouteDetail with _$RouteDetail {
  factory RouteDetail({
    @JsonKey(name: 'special_conditions', defaultValue: []) required List<SpecialCondition> specialConditions,
    @JsonKey(name: 'number_of_passengers', defaultValue: 0) required int numberOfPassengers,
    @JsonKey(name: 'departure_date') required DateTime departureDate,
    @JsonKey(name: 'from_where') required Airport fromWhere,
    @JsonKey(name: 'to_where') required Airport toWhere,
  }) = _RouteDetail;

  factory RouteDetail.fromJson(Map<String, dynamic> json) => _$RouteDetailFromJson(json);
}
