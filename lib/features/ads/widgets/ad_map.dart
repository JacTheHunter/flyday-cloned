import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/ads/models/latlngtype.dart';
import 'package:flyday_broker/features/ads/models/route_detail.dart';
import 'package:latlong2/latlong.dart';

import '../../../common/utils/map_utils.dart';
import '../../../gen/assets.gen.dart';

class AdMap extends StatelessWidget {
  final List<RouteDetail> routeDetails;
  const AdMap({
    super.key,
    required this.routeDetails,
  });

  @override
  Widget build(BuildContext context) {
    final routesPaths = routesPathFromDetails(routeDetails);
    // final bounds = boundsAndCenterOfLatLngs(latlngs);
    final routesPathsPoints = routesPaths
        .where(
          (element) => element.type != null,
        )
        .toList();
    final isRound = routesPathsPoints.first == routesPathsPoints.last;
    final topPadding = MediaQuery.of(context).padding.top + 30;
    return SizedBox(
      width: context.sizeWidth,
      height: 250,
      child: FlutterMap(
        options: MapOptions(
            bounds: LatLngBounds.fromPoints(
              routesPathsPoints.map((l) => LatLng(l.latitude, l.longitude)).toList(),
            ),
            boundsOptions: FitBoundsOptions(
              padding: EdgeInsets.fromLTRB(30, topPadding, 30, 30),
            )
            // screenSize: Size(400, 200),
            // adaptiveBoundaries: true,
            // center: latlngs.last,
            // adaptiveBoundaries: true,
            // screenSize: Size(300, 300),
            ),
        layers: [
          TileLayerOptions(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
          PolylineLayerOptions(
            polylineCulling: false,
            polylines: [
              Polyline(
                points: routesPaths.map((l) => LatLng(l.latitude, l.longitude)).toList(),
                color: context.appColors.mapLocationIconColor,
                strokeWidth: 4,
              ),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              for (int i = 0; i < routesPathsPoints.length; i++)
                Marker(
                  point: LatLng(routesPathsPoints[i].latitude, routesPathsPoints[i].longitude),
                  width: 20,
                  height: 20,
                  builder: (context) => Align(
                    child: routesPathsPoints[i].type == Type.center
                        ? Container(
                            height: 34,
                            width: 34,
                            decoration: BoxDecoration(
                              color: context.appColors.adsViewWebAdPlaneIconBackgroundColor,
                              borderRadius: BorderRadius.circular(34),
                            ),
                            child: Center(
                              child: RotatedBox(
                                quarterTurns: routesPathsPoints[i].isCenterRight == true ? 2 : 0,
                                child: Assets.images.vector.plane.svg(),
                              ),
                            ),
                          )
                        : Icon(
                            _icon(routesPathsPoints[i].type, isRound),
                            color: context.appColors.mapLocationIconColor,
                            size: 20,
                          ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  IconData _icon(Type? type, bool isRound) {
    if (type == Type.begin) {
      if (isRound) {
        return Icons.mode_of_travel;
      }
      return Icons.trip_origin;
    }
    return Icons.place;
  }
}
