import 'dart:math';

import 'package:bezier/bezier.dart';
import 'package:flyday_broker/features/ads/models/route_detail.dart';
import 'package:vector_math/vector_math.dart';

import '../../features/ads/models/latlngtype.dart';

List<LatLngType> routesPathFromDetails(List<RouteDetail> routeDetails) {
  List<LatLngType> locations = [];
  for (var rd in routeDetails) {
    final fromWhereLL =
        LatLngType(double.parse(rd.fromWhere.latitude), double.parse(rd.fromWhere.longitude), Type.begin);
    final toWhereLL = LatLngType(double.parse(rd.toWhere.latitude), double.parse(rd.toWhere.longitude), Type.end);

    final tp = _thirdPoint(
      fromWhereLL.latitude,
      toWhereLL.latitude,
      fromWhereLL.longitude,
      toWhereLL.longitude,
    );

    final center = LatLngType(tp.first, tp.last, Type.center);

    locations.add(fromWhereLL);

    final quadraticCurve = QuadraticBezier(
      [
        Vector2(fromWhereLL.latitude, fromWhereLL.longitude),
        Vector2(center.latitude, center.longitude),
        Vector2(toWhereLL.latitude, toWhereLL.longitude),
      ],
    );

    for (int t = 1; t < 100; t++) {
      final p = t / 100;
      final computedPoint = quadraticCurve.pointAt(p);
      locations.add(
        LatLngType(
            computedPoint.x,
            computedPoint.y,
            t == 50 ? Type.center : null,
            t == 50
                ? fromWhereLL.longitude > toWhereLL.longitude
                    ? true
                    : false
                : null),
      );
    }

    locations.add(toWhereLL);
  }

  return locations;
}

List<double> _thirdPoint(
  double x1,
  double x2,
  double y1,
  double y2,
) {
  final h = sqrt(pow((x2 - x1), 2) + pow((y2 - y1), 2)) / 3;
  double x = ((x1 + x2) / 2) + (h * (y1 - y2) / sqrt((pow(x2 - x1, 2) + pow(y2 - y1, 2))));
  double y = ((y1 + y2) / 2) + (h * (x2 - x1) / sqrt((pow(x2 - x1, 2) + pow(y2 - y1, 2))));

  if (x > 90) x = 90;
  if (x < -90) x = -90;
  if (y > 180) y = 180;
  if (y < -180) y = -180;

  return [x, y];
}
