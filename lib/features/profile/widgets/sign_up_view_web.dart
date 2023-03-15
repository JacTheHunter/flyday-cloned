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
import '../blocs/sign_up_bloc/sign_up_bloc.dart';
import '../utils/platform_screen.dart';

class SignUpViewWeb extends StatelessWidget {
  const SignUpViewWeb({Key? key}) : super(key: key);
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
                            child: BlocListener<SignUpBloc, SignUpState>(
                              listener: (context, state) async {
                                final routeval = await context.router.push(const CreateAccountRoute());
                                if (routeval != true) {
                                  signUpBloc.add(const SignUpEvent.back());
                                }
                              },
                              listenWhen: (previous, current) => previous.step == 0 && current.step == 1,
                              child: BlocConsumer<SignUpBloc, SignUpState>(
                                listener: (context, state) {
                                  checkStateStatusForError(context, state.status);
                                },
                                listenWhen: (previous, current) => previous.status != current.status,
                                builder: (context, state) {
                                  return Column(
                                    children: [
                                      const Spacer(flex: 2),
                                      Assets.images.vector.logoWeb.svg(),
                                      const Spacer(),
                                      Text(
                                        'sign_up'.tr(),
                                        style: context.appTextTheme.authWebTitleTextStyle,
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
                                          errorText: state.emailErrorText,
                                        ),
                                        keyboardType: TextInputType.emailAddress,
                                        onChanged: (value) => signUpBloc.add(SignUpEvent.updateEmail(value)),
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          prefixIcon: Align(
                                            widthFactor: 1,
                                            heightFactor: 1,
                                            child: Assets.images.vector.keyInput.svg(),
                                          ),
                                          hintText: 'password'.tr(),
                                          errorText: state.password.errorText,
                                        ),
                                        obscureText: true,
                                        onChanged: (value) => signUpBloc.add(SignUpEvent.updatePassword(value)),
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          prefixIcon: Align(
                                            widthFactor: 1,
                                            heightFactor: 1,
                                            child: Assets.images.vector.keyInput.svg(),
                                          ),
                                          hintText: 're-enter_password'.tr(),
                                          errorText: state.confirmPasswordErrorText,
                                        ),
                                        obscureText: true,
                                        onChanged: (value) => signUpBloc.add(SignUpEvent.updateConfirmPassword(value)),
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: ElevatedButton(
                                              onPressed: () {
                                                if (state.status is! LoadingStatus) {
                                                  signUpBloc.add(const SignUpEvent.next());
                                                  FocusManager.instance.primaryFocus?.unfocus();
                                                }
                                              },
                                              child: state.status is LoadingStatus
                                                  ? const ElevatedButtonLoader()
                                                  : Text('next'.tr()),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('already_have_account'.tr()),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          TextButton(
                                              onPressed: () {
                                                context.router.push(const LoginRoute());
                                              },
                                              child: Text('login'.tr()))
                                        ],
                                      ),
                                      const Spacer(flex: 2),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
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
