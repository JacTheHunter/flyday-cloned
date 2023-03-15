import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

import '../../../common/widgets/app_checkbox.dart';
import '../../../gen/assets.gen.dart';
import '../blocs/sign_up_bloc/sign_up_bloc.dart';

class CreateAccountViewStep3Mobile extends StatelessWidget {
  const CreateAccountViewStep3Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final signUpBloc = context.read<SignUpBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<SignUpBloc, SignUpState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Center(
                      child: Text(
                        'contacts'.tr(),
                        style: context.appTextTheme.authMobileTitle2TextStyle,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      initialValue: state.websiteAddress.value,
                      decoration: InputDecoration(
                        hintText: 'website_address'.tr(),
                        errorText: state.websiteAddress.errorText,
                        prefixIcon: Align(
                          heightFactor: 1,
                          widthFactor: 1,
                          child: Assets.images.vector.globeInput.svg(),
                        ),
                      ),
                      keyboardType: TextInputType.url,
                      onChanged: (value) => signUpBloc.add(SignUpEvent.updateWebsiteAddress(value)),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      initialValue: state.phoneNumber.value,
                      decoration: InputDecoration(
                        hintText: 'phone_number'.tr(),
                        errorText: state.phoneNumber.errorText,
                        prefixIcon: Align(
                          heightFactor: 1,
                          widthFactor: 1,
                          child: Assets.images.vector.phoneInput.svg(),
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                      onChanged: (value) => signUpBloc.add(SignUpEvent.updatePhoneNumber(value)),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Text(
                      'social_networks_links'.tr(),
                      style: context.appTextTheme.authMobileCaptionTextStyle,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      initialValue: state.telegramLink.value,
                      decoration: InputDecoration(
                        hintText: 'Telegram',
                        errorText: state.telegramLink.errorText,
                        prefixIcon: Align(
                          heightFactor: 1,
                          widthFactor: 1,
                          child: Assets.images.vector.telegram.svg(),
                        ),
                      ),
                      keyboardType: TextInputType.url,
                      onChanged: (value) => signUpBloc.add(SignUpEvent.updateTelegramLink(value)),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      initialValue: state.whatsappLink.value,
                      decoration: InputDecoration(
                        hintText: 'Whatsapp',
                        errorText: state.whatsappLink.errorText,
                        prefixIcon: Align(
                          heightFactor: 1,
                          widthFactor: 1,
                          child: Assets.images.vector.whatsapp.svg(),
                        ),
                      ),
                      keyboardType: TextInputType.url,
                      onChanged: (value) => signUpBloc.add(SignUpEvent.updateWhatsAppLink(value)),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      initialValue: state.messengerLink.value,
                      decoration: InputDecoration(
                        hintText: 'Messenger',
                        errorText: state.messengerLink.errorText,
                        prefixIcon: Align(
                          heightFactor: 1,
                          widthFactor: 1,
                          child: Assets.images.vector.messenger.svg(),
                        ),
                      ),
                      keyboardType: TextInputType.url,
                      onChanged: (value) => signUpBloc.add(SignUpEvent.updateMessengerLink(value)),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Row(
                      children: [
                        AppCheckbox(
                          value: state.termsAndConditions.value ?? false,
                          onPressed: (value) => signUpBloc.add(SignUpEvent.updateTermsAndConditions(value)),
                        ),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'i_accept_the'.tr(),
                                ),
                                TextSpan(
                                  text: 'terms_and_conditions'.tr(),
                                  style: context.appTextTheme.authMobileCaptionLinkTextStyle,
                                ),
                              ],
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (state.termsAndConditions.errorText != null)
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              state.termsAndConditions.errorText!,
                              style: context.appTextTheme.inputErrorTextStyle,
                            ),
                          ),
                        ],
                      ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        AppCheckbox(
                          value: state.privacyPolicy.value ?? false,
                          onPressed: (value) => signUpBloc.add(SignUpEvent.updatePrivacyPolice(value)),
                        ),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'i_ve_read_the'.tr(),
                                ),
                                TextSpan(
                                  text: 'privacy_policy'.tr(),
                                  style: context.appTextTheme.authMobileCaptionLinkTextStyle,
                                ),
                              ],
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (state.privacyPolicy.errorText != null)
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              state.privacyPolicy.errorText!,
                              style: context.appTextTheme.inputErrorTextStyle,
                            ),
                          ),
                        ],
                      ),
                    const Spacer(flex: 5),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
