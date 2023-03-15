import 'package:flutter/material.dart';

import '../../../common/utils/platform.dart';
import '../widgets/offer_view_mobile.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isWebMobileOrMobile) {
      return const OfferViewMobile();
    }

    return const OfferViewMobile();
  }
}
