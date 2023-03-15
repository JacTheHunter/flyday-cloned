import 'package:freezed_annotation/freezed_annotation.dart';

part 'latlngtype.freezed.dart';

@freezed
class LatLngType with _$LatLngType {
  const factory LatLngType(
    double latitude,
    double longitude, [
    Type? type,
    bool? isCenterRight,
  ]) = _LatLngType;
}

enum Type { begin, end, center }
