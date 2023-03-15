import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/ads/models/route_detail.dart';

import '../../../common/utils/date_formaters.dart';
import '../../../common/widgets/flight_path.dart';
import '../../../gen/assets.gen.dart';

class AdsViewMobileItemRouteDetail extends StatelessWidget {
  final RouteDetail item;
  const AdsViewMobileItemRouteDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 16),
      child: Column(
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
                      item.fromWhere.city.name,
                      style: context.appTextTheme.adsViewMobileAdDestinationTextStyle,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      '${item.fromWhere.city.name} (${item.fromWhere.iataCode.toUpperCase()})',
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
                      item.toWhere.city.name,
                      style: context.appTextTheme.adsViewMobileAdDestinationTextStyle,
                      textAlign: TextAlign.right,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      '${item.toWhere.city.name} (${item.toWhere.iataCode.toUpperCase()})',
                      style: context.appTextTheme.adsViewMobileAdDestinationAirportTextStyle,
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Assets.images.vector.calendar.svg(color: context.appColors.adsViewWebAdDateTimeIconColor),
              const SizedBox(
                width: 6,
              ),
              Text(
                DateFormaters.routeDate(item.departureDate),
                style: context.appTextTheme.adsViewMobileAdDateTimeTextStyle,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                DateFormaters.routeTime(item.departureDate),
                style: context.appTextTheme.adsViewMobileAdDateTimeTextStyle,
              )
            ],
          ),
        ],
      ),
    );
  }
}
