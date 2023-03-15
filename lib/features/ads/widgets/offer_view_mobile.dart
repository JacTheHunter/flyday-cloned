import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/widgets/app_image.dart';
import 'package:flyday_broker/common/widgets/dashboard_appbar_leading_icon.dart';
import 'package:flyday_broker/common/widgets/doted_divider.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

import '../../../common/utils/date_formaters.dart';
import '../../offers/blocs/offers_bloc/offers_bloc.dart';
import 'offer_view_mobile_images_slider.dart';

class OfferViewMobile extends StatelessWidget {
  const OfferViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<OffersBloc, OffersState>(
        builder: (context, state) {
          if (state.selectedOffer == null) return Container();
          final offer = state.selectedOffer!;
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: context.appColors.adViewAdBackgroundColor,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(bottom: Radius.circular(12)),
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        offer.aircraft != null
                            ? OfferViewMobileImagesSlider(
                                items: offer.aircraft!.images.map<Widget>((e) {
                                  if (e.correctUrl != null && e.correctUrl!.isNotEmpty) {
                                    return AppImage(imageUrl: e.correctUrl!);
                                  }
                                  return Container();
                                }).toList(),
                              )
                            : const SizedBox(height: 150, width: double.infinity),
                        const Positioned(left: 16, top: 50, child: DashboardAppbarLeadingIcon()),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 24,
                            width: context.sizeWidth,
                            decoration: BoxDecoration(
                              color: context.appColors.adViewAdOfferBackgroundColor,
                              borderRadius: const BorderRadius.vertical(top: Radius.circular(50)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: context.appColors.adViewAdBackgroundColor,
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        offer.priceWithCurrency,
                        style: context.appTextTheme.offerViewMobilePriceTextStyle,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      if (offer.aircraft != null)
                        Text(
                          offer.aircraft!.name,
                          style: context.appTextTheme.offerViewMobileNameTextStyle,
                        ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        '${'valid_until:'.tr()} ${DateFormaters.offerValidUntilDate(offer.validUntil)}',
                        style: context.appTextTheme.offerViewMobileValidUntilTextStyle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const DotedDivider(),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  width: 44,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    color: context.appColors.offerViewMobileIconBackgroundColor,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Align(
                                    child: Assets.images.vector.clock.svg(
                                      width: 20,
                                      color: context.appColors.offerViewMobileIconColor,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'flight_time:'.tr(),
                                      style: context.appTextTheme.offerViewMobileTimeAndSeatLabelTextStyle,
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      offer.flightTime,
                                      style: context.appTextTheme.offerViewMobileTitleTextStyle,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  width: 44,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    color: context.appColors.offerViewMobileIconBackgroundColor,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Align(
                                    child: Assets.images.vector.armChair.svg(
                                      width: 18,
                                      color: context.appColors.offerViewMobileIconColor,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                if (offer.aircraft != null)
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'seats:'.tr(),
                                        style: context.appTextTheme.offerViewMobileTimeAndSeatLabelTextStyle,
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        offer.aircraft!.seats.toString(),
                                        style: context.appTextTheme.offerViewMobileTitleTextStyle,
                                      ),
                                    ],
                                  )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const DotedDivider(),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'conditions'.tr(),
                        style: context.appTextTheme.offerViewMobileTitleTextStyle,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Wrap(
                        spacing: 12,
                        runSpacing: 8,
                        alignment: WrapAlignment.start,
                        runAlignment: WrapAlignment.start,
                        children: [
                          ...offer.conditions.map(
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
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'jet'.tr(),
                        style: context.appTextTheme.offerViewMobileTitleTextStyle,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      if (offer.aircraft != null)
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Assets.images.vector.confirmationNumber.svg(),
                                  const SizedBox(
                                    width: 5.5,
                                  ),
                                  Expanded(
                                    child: Text(
                                      offer.aircraft!.regNumber,
                                      style: context.appTextTheme.adViewMobileAdOfferTextStyle,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Assets.images.vector.calendar.svg(),
                                  const SizedBox(
                                    width: 5.5,
                                  ),
                                  Expanded(
                                    child: Text(
                                      offer.aircraft!.years,
                                      style: context.appTextTheme.adViewMobileAdOfferTextStyle,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      const SizedBox(
                        height: 12,
                      ),
                      if (offer.aircraft != null)
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
                                      offer.aircraft!.type ?? '',
                                      style: context.appTextTheme.adViewMobileAdOfferTextStyle,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Assets.images.vector.message.svg(),
                                const SizedBox(
                                  width: 5.5,
                                ),
                                Expanded(
                                  child: Text(
                                    offer.generalNote,
                                    style: context.appTextTheme.adViewMobileAdOfferTextStyle,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      SafeArea(
                        child: OutlinedButton(
                          onPressed: () {
                            context.router.pop();
                            context.read<OffersBloc>().add(OffersEvent.withdrawOffer(offer.id));
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: context.appColors.dangerButtonBackgroundColor,
                            side: BorderSide.none,
                            elevation: 0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
