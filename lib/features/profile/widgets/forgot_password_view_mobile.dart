import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/route/app_router.gr.dart';
import '../../../common/utils/check_state_status.dart';
import '../../../common/utils/extentions_on_build_context.dart';
import '../../../common/widgets/elevated_button_loader.dart';
import '../../../gen/assets.gen.dart' show Assets;
import '../blocs/forgot_password_email_bloc/forgot_password_email_bloc.dart';

class ForgotPasswordViewMobile extends StatelessWidget {
  const ForgotPasswordViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final forgotPasswordEmailBloc = context.read<ForgotPasswordEmailBloc>();

    return Scaffold(
      appBar: AppBar(
        title: Text('forgot'.tr()),
      ),
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
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
                                        context.router.push(NewPasswordRoute(email: state.email.value));
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'forgot_password'.tr(),
                                style: context.appTextTheme.authMobileTitle2TextStyle,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit',
                                style: context.appTextTheme.authMobileTextStyle,
                              ),
                              const SizedBox(
                                height: 24,
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
                                height: 75,
                              ),
                              const Spacer(),
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
                              const SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('already_have_code'.tr()),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        context.router.push(NewPasswordRoute());
                                      },
                                      child: Text('enter_code'.tr()))
                                ],
                              ),
                              const Spacer(
                                flex: 5,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
