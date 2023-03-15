import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/profile/widgets/web_onboarding_view.dart';
import 'package:pinput/pinput.dart';

import '../../../gen/assets.gen.dart';
import '../utils/platform_screen.dart';

class VerifyCodeViewWeb extends StatelessWidget {
  const VerifyCodeViewWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shloudShowWebOnboarding = canShowWebOnboarding(context);
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
                  Expanded(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints.expand(width: 420),
                      child: CustomScrollView(
                        slivers: [
                          SliverFillRemaining(
                            hasScrollBody: false,
                            child: Column(
                              children: [
                                const Spacer(flex: 2),
                                Assets.images.vector.logoWeb.svg(),
                                const Spacer(),
                                Text(
                                  'verify_email'.tr(),
                                  style: context.appTextTheme.authWebTitleTextStyle,
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'enter_code_sent_to_email'.tr(),
                                  style: context.appTextTheme.authWebTextStyle,
                                ),
                                const SizedBox(
                                  height: 32,
                                ),
                                Pinput(
                                  length: 6,
                                  defaultPinTheme: PinTheme(
                                    textStyle: context.appTextTheme.inputTextStyle,
                                    height: 50,
                                    width: 50,
                                    //padding: const EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: context.appColors.inputBorderColor,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                      color: context.appColors.inputFillWebColor,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 32,
                                ),
                                Text('${'resend_code_in'.tr()} 00:59'),
                                const SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // context.router.pop();
                                          // context.router.push(const NewPasswordRoute());
                                        },
                                        child: Text('submit'.tr()),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(flex: 3),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
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
        ],
      ),
    );
  }
}
