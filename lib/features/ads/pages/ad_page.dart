import 'package:flutter/material.dart';
import 'package:flyday_broker/features/ads/widgets/ad_view_mobile.dart';

import '../../../common/utils/platform.dart';
import '../widgets/ad_view_web.dart';

class AdPage extends StatelessWidget {
  const AdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isWebMobileOrMobile) {
      return const AdViewMobile();
    }

    return const AdViewWeb();
  }
}
