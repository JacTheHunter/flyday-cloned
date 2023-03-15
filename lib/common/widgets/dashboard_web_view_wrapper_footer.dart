import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

class DashboardWebViewWrapperFooter extends StatelessWidget {
  const DashboardWebViewWrapperFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(height: 1),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            children: [
              Text(
                '© 2022 FLYDAY, Inc.',
                style: context.appTextTheme.adsViewFooterWebCompanyTextStyle,
              ),
              const Flexible(
                child: SizedBox(
                  width: 40,
                ),
              ),
              Text(
                'privacy_policy'.tr(),
                style: context.appTextTheme.adsViewFooterWebCompanyTextStyle,
              ),
              const Spacer(
                flex: 20,
              ),
              IconButton(onPressed: () {}, icon: Assets.images.vector.facebookNav.svg()),
              const Flexible(
                child: SizedBox(
                  width: 40,
                ),
              ),
              IconButton(onPressed: () {}, icon: Assets.images.vector.youtubeNav.svg()),
              const Flexible(
                child: SizedBox(
                  width: 40,
                ),
              ),
              IconButton(onPressed: () {}, icon: Assets.images.vector.instagramNav.svg()),
              const Flexible(
                child: SizedBox(
                  width: 40,
                ),
              ),
              IconButton(onPressed: () {}, icon: Assets.images.vector.telegramNav.svg()),
            ],
          ),
        ),
      ],
    );
  }
}
