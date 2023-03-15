import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/profile/widgets/create_account_view_indicator_web.dart';
import 'package:flyday_broker/features/profile/widgets/create_account_view_step_1_web.dart';
import 'package:flyday_broker/features/profile/widgets/web_onboarding_view.dart';

import '../../../common/models/state_status.dart';
import '../../../common/widgets/elevated_button_loader.dart';
import '../../../gen/assets.gen.dart';
import '../blocs/sign_up_bloc/sign_up_bloc.dart';
import '../utils/platform_screen.dart';
import 'create_account_view_step_2_web.dart';
import 'create_account_view_step_3_web.dart';

class CreateAccountViewWeb extends StatefulWidget {
  const CreateAccountViewWeb({Key? key}) : super(key: key);

  @override
  State<CreateAccountViewWeb> createState() => _CreateAccountViewWebState();
}

class _CreateAccountViewWebState extends State<CreateAccountViewWeb> {
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final shloudShowWebOnboarding = canShowWebOnboarding(context);
    final signUpBloc = context.read<SignUpBloc>();
    return Scaffold(
      backgroundColor: context.appColors.authWebBackgroundColor,
      drawer: const Drawer(
        child: WebOnboardingView(),
      ),
      body: Row(
        children: [
          if (shloudShowWebOnboarding) const WebOnboardingView(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: context.appColors.authWebForegroundColor,
                borderRadius: shloudShowWebOnboarding ? const BorderRadius.horizontal(left: Radius.circular(36)) : null,
              ),
              child: BlocListener<SignUpBloc, SignUpState>(
                listenWhen: (previous, current) => previous.step != current.step,
                listener: (context, state) {
                  if (_pageController.page?.toInt() != state.step - 1) {
                    _pageController.animateToPage(
                      state.step - 1,
                      duration: kThemeAnimationDuration,
                      curve: Curves.ease,
                    );
                  }
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (!shloudShowWebOnboarding)
                      Builder(builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 60, top: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: ElevatedButton(
                              onPressed: () => Scaffold.of(context).openDrawer(),
                              child: const Icon(Icons.info),
                            ),
                          ),
                        );
                      }),
                    const Spacer(),
                    Assets.images.vector.logoWeb.svg(),
                    const Spacer(),
                    BlocSelector<SignUpBloc, SignUpState, int>(
                      selector: (state) {
                        return state.step;
                      },
                      builder: (context, state) {
                        return CreateAccountViewIndicatorWeb(currentStep: state);
                      },
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 20,
                      child: ConstrainedBox(
                        constraints: const BoxConstraints.expand(width: 460),
                        child: PageView(
                          controller: _pageController,
                          physics: const NeverScrollableScrollPhysics(),
                          children: const [
                            CreateAccountViewStep1Web(),
                            CreateAccountViewStep2Web(),
                            CreateAccountViewStep3Web(),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    BlocBuilder<SignUpBloc, SignUpState>(
                      builder: (context, state) {
                        return SizedBox(
                          width: 420,
                          child: ElevatedButton(
                            onPressed: () {
                              FocusManager.instance.primaryFocus?.unfocus();
                              signUpBloc.add(const SignUpEvent.next());
                            },
                            child: state.status is LoadingStatus
                                ? const ElevatedButtonLoader()
                                : Text(
                                    state.step == 3 ? 'submit'.tr() : 'next'.tr(),
                                  ),
                          ),
                        );
                      },
                    ),
                    const Spacer(),
                    // Expanded(
                    //   child: ConstrainedBox(
                    //     constraints: const BoxConstraints.expand(width: 420),
                    //     child: CustomScrollView(
                    //       slivers: [
                    //         SliverFillRemaining(
                    //           hasScrollBody: false,
                    //           child: Column(
                    //             mainAxisSize: MainAxisSize.min,
                    //             children: [
                    //               const Spacer(),
                    //               const Spacer(flex: 2),
                    //             ],
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 60, bottom: 30),
                        child: Text('© 2022 Ptolemay. All rights reserved',
                            style: context.appTextTheme.authWebFooterTextStyle),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
