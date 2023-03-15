import 'package:flutter/material.dart';

import 'package:flyday_broker/features/profile/widgets/sign_up_view_web.dart';
import '../../../common/utils/platform.dart';
import '../widgets/sign_up_view_mobile.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isWebMobileOrMobile) {
      return const SignUpViewMobile();
    }

    return const SignUpViewWeb();
  }
}
