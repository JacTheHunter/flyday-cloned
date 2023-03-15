import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';
import '../../../common/models/state_status.dart';
import '../../../common/utils/check_state_status.dart';
import '../../../common/utils/extentions_on_build_context.dart';
import '../../../common/widgets/elevated_button_loader.dart';
import '../../../gen/assets.gen.dart' show Assets;
import '../blocs/forgot_password_reset_bloc/forgot_password_reset_bloc.dart';

class NewPasswordViewMobile extends StatelessWidget {
  const NewPasswordViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final forgotPasswordResetBloc = context.read<ForgotPasswordResetBloc>();

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
                      child: BlocConsumer<ForgotPasswordResetBloc, ForgotPasswordResetState>(
                        listener: (context, state) {
                          checkStateStatusForError(context, state.status);
                          if (state.status is SuccessStatus) {
                            context.router.popUntilRoot();
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'new_password'.tr(),
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
                                    color: context.appColors.inputFillMobileColor,
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
                                    color: context.appColors.inputFillMobileColor,
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
                                onChanged: (value) =>
                                    forgotPasswordResetBloc.add(ForgotPasswordResetEvent.setConfirmPassword(value)),
                              ),
                              const Spacer(),
                              const SizedBox(
                                height: 16,
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
