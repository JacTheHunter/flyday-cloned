import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/date_formaters.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/ads/models/route_detail.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

import '../../../common/widgets/flight_path.dart';
import 'ad_view_mobile_route_special_condition.dart';

class AdViewMobileRoute extends StatelessWidget {
  final RouteDetail routeDetail;
  const AdViewMobileRoute({Key? key, required this.routeDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const FlightPath(),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    routeDetail.fromWhere.city.name,
                    style: context.appTextTheme.adsViewMobileAdDestinationTextStyle,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    routeDetail.fromWhere.name,
                    style: context.appTextTheme.adsViewMobileAdDestinationAirportTextStyle,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    routeDetail.toWhere.city.name,
                    style: context.appTextTheme.adsViewMobileAdDestinationTextStyle,
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    routeDetail.toWhere.name,
                    style: context.appTextTheme.adsViewMobileAdDestinationAirportTextStyle,
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        IntrinsicHeight(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceev,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Assets.images.vector.calendar.svg(color: context.appColors.adsViewWebAdDateTimeIconColor),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      DateFormaters.routeDate(routeDetail.departureDate),
                      style: context.appTextTheme.adsViewMobileAdDateTimeTextStyle,
                    )
                  ],
                ),
              ),
              const VerticalDivider(),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.images.vector.clock.svg(color: context.appColors.adsViewWebAdDateTimeIconColor),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      DateFormaters.routeTime(routeDetail.departureDate),
                      style: context.appTextTheme.adsViewMobileAdDateTimeTextStyle,
                    )
                  ],
                ),
              ),
              const VerticalDivider(),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.images.vector.armChair.svg(color: context.appColors.adsViewWebAdDateTimeIconColor),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      routeDetail.numberOfPassengers.toString(),
                      style: context.appTextTheme.adsViewMobileAdDateTimeTextStyle,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Wrap(
          spacing: 12,
          runSpacing: 8,
          alignment: WrapAlignment.start,
          children: routeDetail.specialConditions
              .map((sc) => AdViewMobileRouteSpecialCondition(
                    specialCondition: sc,
                  ))
              .toList(),
        ),
        const SizedBox(
          height: 13,
        ),
      ],
    );
  }
}
