import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/profile/widgets/web_onboarding_view.dart';

import '../../../common/models/state_status.dart';
import '../../../common/utils/check_state_status.dart';
import '../../../common/widgets/elevated_button_loader.dart';
import '../../../gen/assets.gen.dart';
import '../../../route/app_router.gr.dart';
import '../blocs/forgot_password_email_bloc/forgot_password_email_bloc.dart';
import '../utils/platform_screen.dart';

class ForgotPasswordViewWeb extends StatelessWidget {
  const ForgotPasswordViewWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shloudShowWebOnboarding = canShowWebOnboarding(context);
    final forgotPasswordEmailBloc = context.read<ForgotPasswordEmailBloc>();

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
                            child: BlocConsumer<ForgotPasswordEmailBloc, ForgotPasswordEmailState>(
                              listener: (context, state) {
                                checkStateStatusForError(context, state.status);
                                if (state.status is SuccessStatus) {
                                  showDialog(
                                    useRootNavigator: true,
                                    context: context,
                                    builder: (context) {
                                      return SimpleDialog(
                                        title: Text('success'.tr()),
                                        contentPadding: const EdgeInsets.all(20),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                        children: [
                                          Text('your_password_reset_email_has_been_sent'.tr()),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          ElevatedButton(
                                            onPressed: () async {
                                              context.router.pop();
                                              context.router.replace(NewPasswordRoute(email: state.email.value));
                                            },
                                            child: Text('enter_code'.tr()),
                                          )
                                        ],
                                      );
                                    },
                                  );
                                }
                              },
                              builder: (context, state) {
                                return Column(
                                  children: [
                                    const Spacer(flex: 2),
                                    Assets.images.vector.logoWeb.svg(),
                                    const Spacer(),
                                    Text(
                                      'forgot_password'.tr(),
                                      style: context.appTextTheme.authWebTitleTextStyle,
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit',
                                      style: context.appTextTheme.authWebTextStyle,
                                    ),
                                    const SizedBox(
                                      height: 32,
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                        prefixIcon: Align(
                                          widthFactor: 1,
                                          heightFactor: 1,
                                          child: Assets.images.vector.emailInput.svg(),
                                        ),
                                        hintText: 'email'.tr(),
                                        errorText: state.email.errorText,
                                      ),
                                      keyboardType: TextInputType.emailAddress,
                                      onChanged: (value) =>
                                          forgotPasswordEmailBloc.add(ForgotPasswordEmailEvent.setEmail(value)),
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              forgotPasswordEmailBloc.add(const ForgotPasswordEmailEvent.send());
                                              FocusManager.instance.primaryFocus?.unfocus();
                                            },
                                            child: state.status is LoadingStatus
                                                ? const ElevatedButtonLoader()
                                                : Text('send_reset_password_email'.tr()),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('already_have_code'.tr()),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        TextButton(
                                            onPressed: () {
                                              context.router.replace(NewPasswordRoute());
                                            },
                                            child: Text('enter_code'.tr()))
                                      ],
                                    ),
                                    const Spacer(),
                                    TextButton(
                                      onPressed: () {
                                        context.router.replace(const LoginRoute());
                                      },
                                      child: Text('go_to_login'.tr()),
                                    ),
                                    const Spacer(flex: 2),
                                  ],
                                );
                              },
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
