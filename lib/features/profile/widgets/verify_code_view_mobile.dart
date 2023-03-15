import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import '../../../common/utils/extentions_on_build_context.dart';

class VerifyCodeViewMobile extends StatelessWidget {
  const VerifyCodeViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('verify_email'.tr()),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'verify_email'.tr(),
                            style: context.appTextTheme.authMobileTitle2TextStyle,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'enter_code_sent_to_email'.tr(),
                            style: context.appTextTheme.authMobileTextStyle,
                          ),
                          const SizedBox(
                            height: 46,
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
                                color: context.appColors.inputFillMobileColor,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 46,
                          ),
                          Text('${'resend_code_in'.tr()} 00:59'),
                          // TextField(
                          //   decoration: InputDecoration(
                          //     prefixIcon: Align(
                          //       widthFactor: 1,
                          //       heightFactor: 1,
                          //       child: Assets.images.vector.emailInput.svg(),
                          //     ),
                          //     hintText: 'email'.tr(),
                          //   ),
                          //   keyboardType: TextInputType.emailAddress,
                          // ),
                          const SizedBox(
                            height: 58,
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
                          const Spacer(
                            flex: 5,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
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
