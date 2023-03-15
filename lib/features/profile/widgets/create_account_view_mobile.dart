import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/widgets/elevated_button_loader.dart';
import 'package:flyday_broker/features/profile/widgets/create_account_view_step_2_mobile.dart';
import '../blocs/sign_up_bloc/sign_up_bloc.dart';
import 'create_account_view_indicator_mobile.dart';
import 'create_account_view_step_1_mobile.dart';
import 'create_account_view_step_3_mobile.dart';

class CreateAccountViewMobile extends StatefulWidget {
  const CreateAccountViewMobile({Key? key}) : super(key: key);

  @override
  State<CreateAccountViewMobile> createState() => _CreateAccountViewMobileState();
}

class _CreateAccountViewMobileState extends State<CreateAccountViewMobile> {
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final signUpBloc = context.read<SignUpBloc>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: BlocListener<SignUpBloc, SignUpState>(
          listenWhen: (previous, current) => previous.step != current.step,
          listener: (context, state) {
            if (_pageController.page?.toInt() != state.step - 1) {
              _pageController.animateToPage(
                state.step - 1,
                duration: kThemeAnimationDuration,
                curve: Curves.ease,
              );
            }
          },
          child: Column(
            children: [
              const SizedBox(
                height: 65,
              ),
              BlocSelector<SignUpBloc, SignUpState, int>(
                selector: (state) {
                  return state.step;
                },
                builder: (context, step) {
                  return Column(
                    children: [
                      CreateAccountViewIndicatorMobile(
                        currentStep: step,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        'step_._of_._'.tr(
                          args: ['$step', '3'],
                        ).toUpperCase(),
                        style: context.appTextTheme.createAccountStepTextStyle,
                      ),
                    ],
                  );
                },
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    CreateAccountViewStep1Mobile(),
                    CreateAccountViewStep2Mobile(),
                    CreateAccountViewStep3Mobile(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: BlocBuilder<SignUpBloc, SignUpState>(
                  builder: (context, state) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            FocusManager.instance.primaryFocus?.unfocus();

                            if (state.step > 1) {
                              signUpBloc.add(const SignUpEvent.back());
                            } else {
                              context.router.pop();
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: context.appColors.secondaryButtonBackgroundColor,
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            color: context.appColors.secondaryButtonMobileIconColor,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            FocusManager.instance.primaryFocus?.unfocus();
                            signUpBloc.add(const SignUpEvent.next());
                          },
                          child: state.status is LoadingStatus
                              ? const ElevatedButtonLoader()
                              : state.step == 3
                                  ? Text('submit'.tr())
                                  : const Icon(
                                      Icons.arrow_forward,
                                    ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
