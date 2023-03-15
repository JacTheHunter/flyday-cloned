import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

class FlightPathVertical extends StatelessWidget {
  const FlightPathVertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10,
      height: 82,
      child: LayoutBuilder(builder: (context, constraints) {
        final totalDashesWithSpacesCount = (constraints.maxHeight - 20) ~/ 4;
        if (constraints.maxHeight < 26) return Container();
        return Column(
          children: [
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: context.appColors.adsViewWebAdPlanePathColor),
              ),
            ),
            ...List.generate(
              totalDashesWithSpacesCount,
              (index) => Container(
                height: 4,
                width: 2,
                color: index.isEven ? context.appColors.adsViewWebAdPlanePathColor : null,
              ),
            ),
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: context.appColors.adsViewWebAdPlanePathColor),
              ),
            ),
          ],
        );
      }),
    );
  }
}
