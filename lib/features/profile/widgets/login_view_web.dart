import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

import '../../../common/models/state_status.dart';
import '../../../common/utils/check_state_status.dart';
import '../../../common/widgets/app_checkbox.dart';
import '../../../common/widgets/elevated_button_loader.dart';
import '../../../route/app_router.gr.dart';
import '../blocs/login/login_bloc.dart';
import '../utils/platform_screen.dart';
import 'web_onboarding_view.dart';

class LoginViewWeb extends StatelessWidget {
  const LoginViewWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginBloc = context.read<LoginBloc>();
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
                            child: BlocConsumer<LoginBloc, LoginState>(
                              listener: (context, state) {
                                checkStateStatusForError(context, state.status);
                              },
                              builder: (context, state) {
                                return Column(
                                  children: [
                                    const Spacer(flex: 2),
                                    Assets.images.vector.logoWebAlt.svg(),
                                    const Spacer(),
                                    Text(
                                      'login'.tr(),
                                      style: context.appTextTheme.authWebTitleTextStyle,
                                    ),
                                    const SizedBox(
                                      height: 32,
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                        errorText: state.email.errorText,
                                        prefixIcon: Align(
                                          widthFactor: 1,
                                          heightFactor: 1,
                                          child: Assets.images.vector.emailInput.svg(),
                                        ),
                                        hintText: 'email'.tr(),
                                      ),
                                      keyboardType: TextInputType.emailAddress,
                                      onChanged: (value) => loginBloc.add(LoginEvent.updateEmail(value)),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                        errorText: state.password.errorText,
                                        prefixIcon: Align(
                                          widthFactor: 1,
                                          heightFactor: 1,
                                          child: Assets.images.vector.keyInput.svg(),
                                        ),
                                        hintText: 'password'.tr(),
                                      ),
                                      obscureText: true,
                                      onChanged: (value) => loginBloc.add(LoginEvent.updatePassword(value)),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: [
                                        AppCheckbox(
                                          value: state.rememberMe,
                                          onPressed: (value) => loginBloc.add(LoginEvent.updateRememberMe(value)),
                                          title: Text('remember_me'.tr()),
                                        ),
                                        const Spacer(),
                                        TextButton(
                                          onPressed: () {
                                            context.router.replace(const ForgotPasswordRoute());
                                          },
                                          child: Text('forgot_password'.tr()),
                                        )
                                      ],
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
                                                loginBloc.add(const LoginEvent.submit());
                                                FocusManager.instance.primaryFocus?.unfocus();
                                              }
                                            },
                                            child: state.status is LoadingStatus
                                                ? const ElevatedButtonLoader()
                                                : Text('login'.tr()),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('dont_have_account'.tr()),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        TextButton(
                                            onPressed: () {
                                              context.router.replace(const SignUpWrapperRoute());
                                            },
                                            child: Text('sign_up'.tr()))
                                      ],
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
