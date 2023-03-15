import 'package:flutter/material.dart';
import '../../../common/utils/platform.dart';
import '../widgets/verify_code_view_mobile.dart';
import '../widgets/verify_code_view_web.dart';

class VerifyCodePage extends StatelessWidget {
  const VerifyCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isWebMobileOrMobile) {
      return const VerifyCodeViewMobile();
    }

    return const VerifyCodeViewWeb();
  }
}
