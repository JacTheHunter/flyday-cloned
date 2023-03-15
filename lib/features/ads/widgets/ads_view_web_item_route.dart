import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/ads/models/route_detail.dart';

import '../../../common/utils/date_formaters.dart';
import '../../../common/widgets/app_image.dart';
import '../../../common/widgets/flight_path.dart';
import '../../../gen/assets.gen.dart';

class AdsViewWebItemRouteDetail extends StatelessWidget {
  final RouteDetail item;
  const AdsViewWebItemRouteDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            flex: 7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.fromWhere.city.name,
                        style: context.appTextTheme.adsViewWebAdDestinationTextStyle,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        '${item.fromWhere.city.name} (${item.fromWhere.iataCode.toUpperCase()})',
                        style: context.appTextTheme.adsViewWebAdDestinationAirportTextStyle,
                      ),
                    ],
                  ),
                ),
                // const Spacer(),
                const Expanded(flex: 2, child: FlightPath()),
                // const Spacer(),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        item.toWhere.city.name,
                        style: context.appTextTheme.adsViewWebAdDestinationTextStyle,
                        textAlign: TextAlign.right,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        '${item.toWhere.city.name} (${item.toWhere.iataCode.toUpperCase()})',
                        style: context.appTextTheme.adsViewWebAdDestinationAirportTextStyle,
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Expanded(child: VerticalDivider()),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Wrap(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  runAlignment: WrapAlignment.end,
                  alignment: WrapAlignment.end,
                  spacing: 30,
                  runSpacing: 10,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Assets.images.vector.calendar.svg(color: context.appColors.adsViewWebAdDateTimeIconColor),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          DateFormaters.routeDate(item.departureDate),
                          style: context.appTextTheme.adsViewWebAdDateTimeTextStyle,
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Assets.images.vector.clock.svg(color: context.appColors.adsViewWebAdDateTimeIconColor),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          DateFormaters.routeTime(item.departureDate),
                          style: context.appTextTheme.adsViewWebAdDateTimeTextStyle,
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Assets.images.vector.armChair.svg(color: context.appColors.adsViewWebAdDateTimeIconColor),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          item.numberOfPassengers.toString(),
                          style: context.appTextTheme.adsViewWebAdDateTimeTextStyle,
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Wrap(
                  spacing: 12,
                  runSpacing: 8,
                  alignment: WrapAlignment.end,
                  children: [
                    ...item.specialConditions.map(
                      (sc) => Container(
                        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: context.appColors.adsViewWebAdConditionBorderColor,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AppImage(
                              imageUrl: sc.icon,
                              width: 14,
                              height: 14,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              sc.name,
                              style: context.appTextTheme.adsViewWebAdConditionsTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
