import 'package:flutter/material.dart';
import 'package:flyday_broker/features/profile/widgets/create_account_view_web.dart';
import '../../../common/utils/platform.dart';
import '../widgets/create_account_view_mobile.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isWebMobileOrMobile) {
      return const CreateAccountViewMobile();
    }

    return const CreateAccountViewWeb();
  }
}
