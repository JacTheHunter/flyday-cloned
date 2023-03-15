import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/utils/triangle_clipper.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

class FlightPath extends StatelessWidget {
  const FlightPath({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: LayoutBuilder(builder: (context, constraints) {
        final totalDashesWithSpacesCount = ((constraints.maxWidth - (constraints.maxWidth > 80 ? 54 : 20))) ~/ 8;
        if (constraints.maxWidth < 30) return Container();
        return Row(
          children: [
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                color: context.appColors.adsViewWebAdPlanePathColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            ...List.generate(
              totalDashesWithSpacesCount,
              (index) => Container(
                height: 2,
                width: 4,
                color: index.isEven ? context.appColors.adsViewWebAdPlanePathColor : null,
              ),
            ),
            if (constraints.maxWidth > 80)
              Container(
                height: 34,
                width: 34,
                decoration: BoxDecoration(
                  color: context.appColors.adsViewWebAdPlaneIconBackgroundColor,
                  borderRadius: BorderRadius.circular(34),
                ),
                child: Center(
                  child: Assets.images.vector.plane.svg(),
                ),
              ),
            ...List.generate(
              totalDashesWithSpacesCount,
              (index) => Container(
                height: 2,
                width: 4,
                color: index.isEven ? context.appColors.adsViewWebAdPlanePathColor : null,
              ),
            ),
            ClipPath(
              clipper: CustomTriangleClipper(),
              child: Container(
                width: 10,
                height: 10,
                color: context.appColors.adsViewWebAdPlanePathColor,
              ),
            ),
          ],
        );
      }),
    );
  }
}
