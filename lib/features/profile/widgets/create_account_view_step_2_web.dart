import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

import '../blocs/sign_up_bloc/sign_up_bloc.dart';

class CreateAccountViewStep2Web extends StatelessWidget {
  const CreateAccountViewStep2Web({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final signUpBloc = context.read<SignUpBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: BlocBuilder<SignUpBloc, SignUpState>(
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'contact_person'.tr(),
                      style: context.appTextTheme.authWebTitleTextStyle,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    TextFormField(
                      initialValue: state.firstName.value,
                      decoration: InputDecoration(
                        hintText: '${'first_name'.tr()}*',
                        errorText: state.firstName.errorText,
                      ),
                      keyboardType: TextInputType.name,
                      textCapitalization: TextCapitalization.words,
                      onChanged: (value) => signUpBloc.add(SignUpEvent.updateFirstName(value)),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      initialValue: state.lastName.value,
                      decoration: InputDecoration(
                        hintText: '${'last_name'.tr()}*',
                        errorText: state.lastName.errorText,
                      ),
                      keyboardType: TextInputType.name,
                      textCapitalization: TextCapitalization.words,
                      onChanged: (value) => signUpBloc.add(SignUpEvent.updateLastName(value)),
                    ),
                    const Spacer(),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
