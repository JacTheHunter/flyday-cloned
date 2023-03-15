import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/route/app_router.gr.dart';
import '../../../common/models/state_status.dart';
import '../../../common/utils/check_state_status.dart';
import '../../../common/utils/extentions_on_build_context.dart';
import '../../../common/widgets/elevated_button_loader.dart';
import '../../../gen/assets.gen.dart' show Assets;
import '../blocs/login/login_bloc.dart';

class LoginViewMobile extends StatelessWidget {
  const LoginViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginBloc = context.read<LoginBloc>();
    return Scaffold(
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
                  Align(
                      alignment: Alignment.centerRight,
                      child: Assets.images.raster.plane1Mobile.image(width: context.sizeWidth)),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: BlocConsumer<LoginBloc, LoginState>(
                        listener: (context, state) {
                          checkStateStatusForError(context, state.status);
                        },
                        builder: (context, state) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'login'.tr(),
                                style: context.appTextTheme.authMobileTitleTextStyle,
                              ),
                              const SizedBox(
                                height: 32,
                              ),
                              TextFormField(
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
                              TextFormField(
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
                                height: 4,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () {
                                    context.router.push(const ForgotPasswordRoute());
                                  },
                                  child: Text('forgot_password'.tr()),
                                ),
                              ),
                              const Spacer(),
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
                              // Spacer(),
                              // Text.rich(
                              //   TextSpan(
                              //     children: [
                              //       const TextSpan(
                              //         text: 'Нажимая кнопку «Продолжить» вы соглашаетесь с ',
                              //       ),
                              //       TextSpan(
                              //         text: 'лицензионным соглашением',
                              //         style: context.appTextTheme.authCaptionLinkTextStyle,
                              //       ),
                              //     ],
                              //     style: context.appTextTheme.authCaptionTextStyle,
                              //   ),
                              // ),
                              const Spacer(),
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
