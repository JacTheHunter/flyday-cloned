import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

import '../../../common/utils/package_info.dart';
import '../../../gen/assets.gen.dart';

class AboutWebDialog extends StatelessWidget {
  const AboutWebDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 540),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 24,
                  ),
                  const Spacer(),
                  Text(
                    'about'.tr(),
                    style: context.appTextTheme.aboutTitleTextStyle,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      context.router.pop();
                    },
                    icon: Icon(
                      Icons.close,
                      color: context.appColors.primaryTextColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(28),
                child: Assets.images.raster.launcherIcon.image(width: 164, height: 164),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'FlyDay',
                style: context.appTextTheme.aboutLogoTextStyle,
              ),
              const SizedBox(
                height: 8,
              ),
              FutureBuilder(
                future: getVersionText(),
                builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                  if (snapshot.hasData) {
                    return Text(
                      '${'version'.tr()} ${(snapshot.data ?? '')}',
                      style: context.appTextTheme.aboutVersionTextStyle,
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
