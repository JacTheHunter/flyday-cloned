import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/widgets/app_image.dart';
import 'package:flyday_broker/features/offers/blocs/offers_bloc/offers_bloc.dart';
import 'package:flyday_broker/features/offers/models/offer.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

import '../../../common/utils/date_formaters.dart';
import 'ad_view_web_offer_item_images_slider.dart';

class AdViewWebOfferItem extends StatelessWidget {
  final Offer item;
  const AdViewWebOfferItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.appColors.adViewAdOfferBackgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 16),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (item.aircraft != null && item.aircraft!.images.isNotEmpty)
              AdViewWebOfferItemImagesSlider(
                images: item.aircraft!.images,
              ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item.priceWithCurrency,
                          style: context.appTextTheme.adViewWebAdOfferPriceTextStyle,
                        ),
                        OutlinedButton(
                          onPressed: () {
                            context.read<OffersBloc>().add(OffersEvent.withdrawOffer(item.id));
                          },
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 3.5, horizontal: 25),
                            elevation: 0,
                            side: BorderSide(color: context.appColors.adViewWebAdOfferWithdrawButtonBorderColor),
                          ),
                          child: Row(
                            children: [
                              Assets.images.vector.dismiss.svg(),
                              const SizedBox(
                                width: 13,
                              ),
                              Text(
                                'withdraw_offer'.tr(),
                                style: context.appTextTheme.adViewWebAdOfferWithdrawButtonTextStyle,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        if (item.aircraft != null)
                          Text(
                            item.aircraft!.name,
                            style: context.appTextTheme.adViewWebAdOfferNameTextStyle,
                          ),
                        const Spacer(),
                        Text(
                          'flight_time:'.tr(),
                          style: context.appTextTheme.adViewWebAdOfferLabelTextStyle,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          item.flightTime,
                          style: context.appTextTheme.adViewWebAdOfferTimeAndPlacesCountTextStyle,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        if (item.aircraft != null)
                          Text(
                            'seats:'.tr(),
                            style: context.appTextTheme.adViewWebAdOfferLabelTextStyle,
                          ),
                        const SizedBox(
                          width: 6,
                        ),
                        if (item.aircraft != null)
                          Text(
                            item.aircraft!.seats.toString(),
                            style: context.appTextTheme.adViewWebAdOfferTimeAndPlacesCountTextStyle,
                          ),
                        // const Spacer(),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          '${'valid_until:'.tr()} ${DateFormaters.offerValidUntilDate(item.validUntil)}',
                          style: context.appTextTheme.adViewWebAdOfferValidUntilTextStyle,
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        // const Spacer(),
                        Expanded(
                          child: Wrap(
                              spacing: 12,
                              runSpacing: 8,
                              alignment: WrapAlignment.end,
                              children: item.conditions
                                  .map(
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
                                          AppImage(imageUrl: sc.icon, width: 14, height: 14),
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
                                  )
                                  .toList()),
                        ),
                        // const Spacer(),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Divider(),
                    if (item.aircraft != null)
                      Wrap(
                        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        spacing: 50,
                        runSpacing: 10,

                        alignment: WrapAlignment.spaceBetween,
                        runAlignment: WrapAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Assets.images.vector.confirmationNumber
                                  .svg(color: context.appColors.adsViewWebAdDateTimeIconColor),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                item.aircraft!.regNumber,
                                style: context.appTextTheme.adsViewWebAdDateTimeTextStyle,
                              )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Assets.images.vector.calendar.svg(color: context.appColors.adsViewWebAdDateTimeIconColor),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                item.aircraft!.years,
                                style: context.appTextTheme.adsViewWebAdDateTimeTextStyle,
                              )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Assets.images.vector.recommend
                                  .svg(color: context.appColors.adsViewWebAdDateTimeIconColor),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                item.aircraft!.type ?? '',
                                style: context.appTextTheme.adsViewWebAdDateTimeTextStyle,
                              )
                            ],
                          ),
                        ],
                      ),
                    const SizedBox(
                      height: 12,
                    ),
                    if (item.generalNote.isNotEmpty)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Assets.images.vector.message.svg(color: context.appColors.adsViewWebAdDateTimeIconColor),
                          const SizedBox(
                            width: 6,
                          ),
                          Expanded(
                            child: Text(
                              item.generalNote,
                              style: context.appTextTheme.adsViewWebAdDateTimeTextStyle,
                            ),
                          )
                        ],
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
