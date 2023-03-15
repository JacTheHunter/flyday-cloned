import 'package:flutter/widgets.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

bool canShowWebOnboarding(BuildContext context) {
  return ((context.sizeWidth - context.sizeWidth * .34) > 440);
}
