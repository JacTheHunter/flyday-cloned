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
import '../blocs/sign_up_bloc/sign_up_bloc.dart';

class SignUpViewMobile extends StatelessWidget {
  const SignUpViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final signUpBloc = context.read<SignUpBloc>();
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
                      alignment: Alignment.centerLeft,
                      child: Assets.images.raster.plane2Mobile.image(width: context.sizeWidth)),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: BlocListener<SignUpBloc, SignUpState>(
                        listener: (context, state) async {
                          final routeval = await context.pushRoute(const CreateAccountRoute());
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'sign_up'.tr(),
                                  style: context.appTextTheme.authMobileTitleTextStyle,
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
                                  height: 16,
                                ),
                                const Spacer(),
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
                                          context.router.replace(const LoginRoute());
                                        },
                                        child: Text('login'.tr()))
                                  ],
                                ),
                                const Spacer(),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'by_clicking_next'.tr(),
                                      ),
                                      TextSpan(
                                        text: 'terms_and_conditions'.tr(),
                                        style: context.appTextTheme.authMobileCaptionLinkTextStyle,
                                      ),
                                    ],
                                    style: context.appTextTheme.authMobileCaptionTextStyle,
                                  ),
                                ),
                                const Spacer(),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            );
                          },
                        ),
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
