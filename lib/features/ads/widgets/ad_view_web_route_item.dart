import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/widgets/app_image.dart';
import 'package:flyday_broker/features/ads/models/route_detail.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

import '../../../common/utils/date_formaters.dart';
import '../../../common/widgets/flight_path_vertical.dart';

class AdViewWebRouteItem extends StatelessWidget {
  final RouteDetail item;
  const AdViewWebRouteItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const FlightPathVertical(),
            const SizedBox(
              width: 13,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          item.fromWhere.city.name,
                          style: context.appTextTheme.adsViewWebAdDestinationTextStyle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          '${item.fromWhere.city.name} (${item.fromWhere.iataCode.toUpperCase()})',
                          style: context.appTextTheme.adsViewWebAdDestinationAirportTextStyle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          item.toWhere.city.name,
                          style: context.appTextTheme.adsViewWebAdDestinationTextStyle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          '${item.toWhere.city.name} (${item.toWhere.iataCode.toUpperCase()})',
                          style: context.appTextTheme.adsViewWebAdDestinationAirportTextStyle,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Wrap(
          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        const Divider(height: 44),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...item.specialConditions.map(
              (sc) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
                        color: context.appColors.adViewWebAdConditionBackgroundColor,
                      ),
                      child: Center(
                        child: AppImage(
                          imageUrl: sc.icon,
                          width: 14,
                          height: 14,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      sc.name,
                      style: context.appTextTheme.adViewWebAddConditionsTextStyle,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
