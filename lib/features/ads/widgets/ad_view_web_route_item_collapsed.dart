import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/widgets/app_image.dart';
import 'package:flyday_broker/features/ads/models/route_detail.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

import '../../../common/utils/date_formaters.dart';
import '../../../common/widgets/flight_path_vertical.dart';

class AdViewWebRouteItemCollapsed extends StatelessWidget {
  final RouteDetail item;
  const AdViewWebRouteItemCollapsed({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const FlightPathVertical(),
                const SizedBox(
                  width: 13,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.fromWhere.city.name,
                      style: context.appTextTheme.adsViewWebAdDestinationTextStyle,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      '${item.fromWhere.city.name} (${item.fromWhere.iataCode.toUpperCase()})',
                      style: context.appTextTheme.adsViewWebAdDestinationAirportTextStyle,
                    ),
                    const SizedBox(
                      height: 34,
                    ),
                    Text(
                      item.toWhere.city.name,
                      style: context.appTextTheme.adsViewWebAdDestinationTextStyle,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      '${item.toWhere.city.name} (${item.toWhere.iataCode.toUpperCase()})',
                      style: context.appTextTheme.adsViewWebAdDestinationAirportTextStyle,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 13,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
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
                  Wrap(
                    spacing: 12,
                    runSpacing: 8,
                    alignment: WrapAlignment.start,
                    runAlignment: WrapAlignment.start,
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
      ),
    );
  }
}
