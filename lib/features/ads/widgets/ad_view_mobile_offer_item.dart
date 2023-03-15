import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/widgets/doted_divider.dart';
import 'package:flyday_broker/features/offers/models/offer.dart';
import 'package:flyday_broker/gen/assets.gen.dart';
import 'package:flyday_broker/route/app_router.gr.dart';

import '../../offers/blocs/offers_bloc/offers_bloc.dart';

class AdViewMobileOfferItem extends StatelessWidget {
  final Offer item;
  const AdViewMobileOfferItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: () {
          context.read<OffersBloc>().add(OffersEvent.setSelectedOffer(item.id));
          context.router.push(const OfferRoute());
        },
        borderRadius: BorderRadius.circular(12),
        child: Ink(
          decoration: BoxDecoration(
            color: context.appColors.adViewAdOfferBackgroundColor,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (item.aircraft != null)
                Text(
                  item.aircraft!.name,
                  style: context.appTextTheme.adViewMobileAdOfferNameTextStyle,
                ),
              const SizedBox(
                height: 8,
              ),
              Text(
                item.priceWithCurrency,
                style: context.appTextTheme.adViewMobileAdOfferPriceTextStyle,
              ),
              const SizedBox(
                height: 12,
              ),
              const DotedDivider(),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Assets.images.vector.clockAlt.svg(),
                        const SizedBox(
                          width: 5.5,
                        ),
                        Expanded(
                          child: Text(
                            item.flightTime,
                            style: context.appTextTheme.adViewMobileAdOfferTextStyle,
                          ),
                        )
                      ],
                    ),
                  ),
                  if (item.aircraft != null)
                    Expanded(
                      child: Row(
                        children: [
                          Assets.images.vector.armChairAlt.svg(),
                          const SizedBox(
                            width: 5.5,
                          ),
                          Expanded(
                            child: Text(
                              item.aircraft!.seats.toString(),
                              style: context.appTextTheme.adViewMobileAdOfferTextStyle,
                            ),
                          )
                        ],
                      ),
                    ),
                ],
              ),
              const SizedBox(
                height: 13,
              ),
              if (item.aircraft != null)
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Assets.images.vector.recommend.svg(),
                          const SizedBox(
                            width: 5.5,
                          ),
                          Expanded(
                            child: Text(
                              item.aircraft!.type ?? '',
                              style: context.appTextTheme.adViewMobileAdOfferTextStyle,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Assets.images.vector.confirmationNumber.svg(),
                          const SizedBox(
                            width: 5.5,
                          ),
                          Expanded(
                            child: Text(
                              item.aircraft!.regNumber,
                              style: context.appTextTheme.adViewMobileAdOfferTextStyle,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              const SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  if (item.generalNote.isNotEmpty)
                    Expanded(
                      child: Row(
                        children: [
                          Assets.images.vector.info.svg(),
                          const SizedBox(
                            width: 5.5,
                          ),
                          Expanded(
                            child: Text(
                              item.generalNote,
                              style: context.appTextTheme.adViewMobileAdOfferTextStyle,
                            ),
                          )
                        ],
                      ),
                    ),
                  if (item.aircraft != null)
                    Expanded(
                      child: Row(
                        children: [
                          Assets.images.vector.calendar.svg(),
                          const SizedBox(
                            width: 5.5,
                          ),
                          Expanded(
                            child: Text(
                              item.aircraft!.years,
                              style: context.appTextTheme.adViewMobileAdOfferTextStyle,
                            ),
                          )
                        ],
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
