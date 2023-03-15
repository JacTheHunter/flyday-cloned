import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/widgets/dashboard_web_view_wrapper.dart';
import '../../../common/models/state_status.dart';
import '../../../common/utils/check_state_status.dart';
import '../../ads/blocs/ads_bloc/ads_bloc.dart';
import '../blocs/offer_editor_bloc/offer_editor_bloc.dart';
import '../blocs/offers_bloc/offers_bloc.dart';
import 'offer_editor_view_step_1_web.dart';
import 'offer_editor_view_step_2_web.dart';
import 'offer_editor_view_step_3_web.dart';
import 'offer_editor_view_step_4_web.dart';

class OfferEditorViewWeb extends StatelessWidget {
  const OfferEditorViewWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DashboardWebViewWrapper(
      child: BlocListener<OfferEditorBloc, OfferEditorState>(
        listener: (context, state) {
          checkStateStatusForError(context, state.status);
          if (state.status is SuccessStatus) {
            context.read<OffersBloc>().add(const OffersEvent.fetch());
            final adsBloc = context.read<AdsBloc>();
            adsBloc.add(const AdsEvent.fetchAds());
            adsBloc.add(AdsEvent.selectAd(adsBloc.state.selectedAd?.id ?? 0));
            context.router.pop();
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'send_offer'.tr(),
              style: context.appTextTheme.adMessagesButtonTextStyle,
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: context.appColors.offerEditorBackgroundColor,
              ),
              child: Row(
                children: [
                  const Spacer(),
                  Expanded(
                    flex: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            BlocSelector<OfferEditorBloc, OfferEditorState, int>(
                              selector: (state) {
                                return state.currentStepWeb;
                              },
                              builder: (context, step) {
                                return Row(
                                  children: [
                                    for (int i = 1; i < 5; i++)
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 32,
                                              height: 32,
                                              decoration: BoxDecoration(
                                                color: i <= step
                                                    ? context.appColors.offerEditorStepActiveBackgroundColor
                                                    : context.appColors.offerEditorStepBackgroundColor,
                                                borderRadius: BorderRadius.circular(32),
                                              ),
                                              child: Center(
                                                child: i < step
                                                    ? Icon(
                                                        Icons.check,
                                                        color: context.appColors.offerEditorStepActiveIconColor,
                                                      )
                                                    : Text(
                                                        i.toString(),
                                                        style: i <= step
                                                            ? context.appTextTheme.offerEditorStepNumberActiveTextStyle
                                                            : context.appTextTheme.offerEditorStepTextStyle,
                                                      ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Expanded(
                                              child: Text(
                                                _stepText(i),
                                                style: i <= step
                                                    ? context.appTextTheme.offerEditorStepActiveTextStyle
                                                    : context.appTextTheme.offerEditorStepTextStyle,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    // Expanded(
                                    //   child: Row(
                                    //     children: [
                                    //       Container(
                                    //         width: 32,
                                    //         height: 32,
                                    //         decoration: BoxDecoration(
                                    //           color: context.appColors.offerEditorStepActiveBackgroundColor,
                                    //           borderRadius: BorderRadius.circular(32),
                                    //         ),
                                    //         child: Center(
                                    //           child: Text(
                                    //             '2',
                                    //             style: context.appTextTheme.offerEditorStepNumberActiveTextStyle,
                                    //           ),
                                    //         ),
                                    //       ),
                                    //       const SizedBox(
                                    //         width: 8,
                                    //       ),
                                    //       Expanded(
                                    //         child: Text(
                                    //           'photo'.tr(),
                                    //           style: context.appTextTheme.offerEditorStepActiveTextStyle,
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                    // Expanded(
                                    //   child: Row(
                                    //     children: [
                                    //       Container(
                                    //         width: 32,
                                    //         height: 32,
                                    //         decoration: BoxDecoration(
                                    //           color: context.appColors.offerEditorStepBackgroundColor,
                                    //           borderRadius: BorderRadius.circular(32),
                                    //         ),
                                    //         child: Center(
                                    //           child: Text(
                                    //             '3',
                                    //             style: context.appTextTheme.offerEditorStepTextStyle,
                                    //           ),
                                    //         ),
                                    //       ),
                                    //       const SizedBox(
                                    //         width: 8,
                                    //       ),
                                    //       Expanded(
                                    //         child: Text(
                                    //           'price_and_time'.tr(),
                                    //           style: context.appTextTheme.offerEditorStepTextStyle,
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                    // Expanded(
                                    //   child: Row(
                                    //     children: [
                                    //       Container(
                                    //         width: 32,
                                    //         height: 32,
                                    //         decoration: BoxDecoration(
                                    //           color: context.appColors.offerEditorStepBackgroundColor,
                                    //           borderRadius: BorderRadius.circular(32),
                                    //         ),
                                    //         child: Center(
                                    //           child: Text(
                                    //             '4',
                                    //             style: context.appTextTheme.offerEditorStepTextStyle,
                                    //           ),
                                    //         ),
                                    //       ),
                                    //       const SizedBox(
                                    //         width: 8,
                                    //       ),
                                    //       Expanded(
                                    //         child: Text(
                                    //           'conditions'.tr(),
                                    //           style: context.appTextTheme.offerEditorStepTextStyle,
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                  ],
                                );
                              },
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            BlocSelector<OfferEditorBloc, OfferEditorState, int>(
                              selector: (state) {
                                return state.currentStepWeb;
                              },
                              builder: (context, step) {
                                return Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    for (int i = 1; i < 5; i++)
                                      Expanded(
                                        child: Container(
                                          width: double.infinity,
                                          height: 2,
                                          color: i <= step
                                              ? context.appColors.offerEditorStepActiveBackgroundColor
                                              : context.appColors.offerEditorStepBackgroundColor,
                                        ),
                                      ),
                                    // Expanded(
                                    //   child: Container(
                                    //     width: double.infinity,
                                    //     height: 2,
                                    //     color: context.appColors.offerEditorStepActiveBackgroundColor,
                                    //   ),
                                    // ),
                                    // Expanded(
                                    //   child: Container(
                                    //     width: double.infinity,
                                    //     height: 2,
                                    //     color: context.appColors.offerEditorStepBackgroundColor,
                                    //   ),
                                    // ),
                                    // Expanded(
                                    //   child: Container(
                                    //     width: double.infinity,
                                    //     height: 2,
                                    //     color: context.appColors.offerEditorStepBackgroundColor,
                                    //   ),
                                    // ),
                                  ],
                                );
                              },
                            ),
                            const SizedBox(
                              height: 56,
                            ),
                            ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 680),
                              child: BlocSelector<OfferEditorBloc, OfferEditorState, int>(
                                selector: (state) {
                                  return state.currentStepWeb;
                                },
                                builder: (context, step) {
                                  return AnimatedSwitcher(
                                    duration: kThemeAnimationDuration,
                                    child: _switcherStepChild(step),
                                    transitionBuilder: (Widget child, Animation<double> animation) {
                                      const begin = Offset(0.0, 1.0);
                                      const end = Offset.zero;
                                      final tween = Tween(begin: begin, end: end);
                                      final offsetAnimation = animation.drive(tween);
                                      return FadeTransition(
                                        opacity: animation,
                                        child: SlideTransition(
                                          position: offsetAnimation,
                                          child: child,
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            // ConstrainedBox(
                            //   constraints: const BoxConstraints(maxWidth: 680),
                            //   child: ExpandablePageView(
                            //     //  controller: _pageController,
                            //     // physics: const NeverScrollableScrollPhysics(),
                            //     children: const [
                            //       OfferEditorViewStep1Web(),
                            //       OfferEditorViewStep2Web(),
                            //       OfferEditorViewStep3Web(),
                            //       OfferEditorViewStep4Web(),
                            //       // OfferEditorViewStep1Web(),
                            //     ],
                            //   ),
                            // ),
                            const SizedBox(
                              height: 80,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Divider(height: 1),
                            const SizedBox(
                              height: 28,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton.icon(
                                  onPressed: () {
                                    context.read<OfferEditorBloc>().add(const OfferEditorEvent.backWeb());
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: context.appColors.secondaryButtonBackgroundColor,
                                  ),
                                  label: Text(
                                    'back'.tr(),
                                    style: context.appTextTheme.secondaryButtonWebTextStyle,
                                  ),
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: context.appColors.secondaryButtonWebIconColor,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    context.read<OfferEditorBloc>().add(const OfferEditorEvent.nextWeb());
                                  },
                                  child: Row(
                                    children: [
                                      Text('next'.tr()),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const Icon(Icons.arrow_forward),
                                    ],
                                  ),

                                  // child: state.status is LoadingStatus
                                  //     ? const ElevatedButtonLoader()
                                  //     : state.step == 3
                                  //         ? Text('submit'.tr())
                                  //         : const Icon(
                                  //             Icons.arrow_forward,
                                  //           ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _stepText(int step) {
    switch (step) {
      case 1:
        return 'jet_info'.tr();
      case 2:
        return 'photo'.tr();
      case 3:
        return 'price_and_time'.tr();
      case 4:
        return 'conditions'.tr();
      default:
        return '';
    }
  }

  Widget _switcherStepChild(int step) {
    switch (step) {
      case 1:
        return const OfferEditorViewStep1Web();
      case 2:
        return const OfferEditorViewStep2Web();
      case 3:
        return const OfferEditorViewStep3Web();
      case 4:
        return const OfferEditorViewStep4Web();
      default:
        return Container();
    }
  }
}
