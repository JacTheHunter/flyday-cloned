import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/profile/widgets/web_onboarding_view.dart';
import 'package:pinput/pinput.dart';

import '../../../common/models/state_status.dart';
import '../../../common/utils/check_state_status.dart';
import '../../../common/widgets/elevated_button_loader.dart';
import '../../../gen/assets.gen.dart';
import '../../../route/app_router.gr.dart';
import '../blocs/forgot_password_reset_bloc/forgot_password_reset_bloc.dart';
import '../utils/platform_screen.dart';

class NewPasswordViewWeb extends StatelessWidget {
  const NewPasswordViewWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shloudShowWebOnboarding = canShowWebOnboarding(context);
    final forgotPasswordResetBloc = context.read<ForgotPasswordResetBloc>();

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
                            child: BlocConsumer<ForgotPasswordResetBloc, ForgotPasswordResetState>(
                              listener: (context, state) {
                                checkStateStatusForError(context, state.status);
                                if (state.status is SuccessStatus) {
                                  context.router.replace(const LoginRoute());
                                  showDialog(
                                    useRootNavigator: true,
                                    context: context,
                                    builder: (context) {
                                      return SimpleDialog(
                                        title: Text('success'.tr()),
                                        contentPadding: const EdgeInsets.all(20),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                        children: [
                                          Text('your_password_has_been_changed'.tr()),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          ElevatedButton(
                                            onPressed: () async {
                                              context.router.pop();
                                            },
                                            child: Text('ok'.tr()),
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
                                      'new_password'.tr(),
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
                                    Pinput(
                                      onChanged: (value) =>
                                          forgotPasswordResetBloc.add(ForgotPasswordResetEvent.setCode(value)),
                                      length: 6,
                                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                      errorText: state.code.errorText,
                                      errorPinTheme: PinTheme(
                                        textStyle: context.appTextTheme.inputTextStyle,
                                        height: 50,
                                        width: 50,
                                        padding: const EdgeInsets.all(0),
                                        margin: const EdgeInsets.all(1),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: context.appColors.errorColor,
                                          ),
                                          borderRadius: BorderRadius.circular(12),
                                          color: context.appColors.inputFillWebColor,
                                        ),
                                      ),
                                      forceErrorState: state.code.errorText != null,
                                      defaultPinTheme: PinTheme(
                                        textStyle: context.appTextTheme.inputTextStyle,
                                        height: 50,
                                        width: 50,
                                        padding: const EdgeInsets.all(0),
                                        margin: const EdgeInsets.all(1),
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
                                      height: 36,
                                    ),
                                    TextFormField(
                                      initialValue: state.email.value,
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
                                          forgotPasswordResetBloc.add(ForgotPasswordResetEvent.setEmail(value)),
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
                                      onChanged: (value) =>
                                          forgotPasswordResetBloc.add(ForgotPasswordResetEvent.setPassword(value)),
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
                                      onChanged: (value) => forgotPasswordResetBloc
                                          .add(ForgotPasswordResetEvent.setConfirmPassword(value)),
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              forgotPasswordResetBloc.add(const ForgotPasswordResetEvent.submit());
                                            },
                                            child: state.status is LoadingStatus
                                                ? const ElevatedButtonLoader()
                                                : Text('update_password'.tr()),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        context.router.replace(const LoginRoute());
                                      },
                                      child: Text('go_to_login'.tr()),
                                    ),
                                    const Spacer(flex: 3),
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
