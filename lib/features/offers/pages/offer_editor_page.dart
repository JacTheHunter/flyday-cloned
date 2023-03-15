import 'package:flutter/material.dart';
import 'package:flyday_broker/features/offers/widgets/offer_editor_view_mobile.dart';

import '../../../common/utils/platform.dart';
import '../widgets/offer_editor_view_web.dart';

class OfferEditorPage extends StatelessWidget {
  const OfferEditorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isWebMobileOrMobile) {
      return const OfferEditorViewMobile();
    }

    return const OfferEditorViewWeb();
  }
}
