import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

import '../../../common/utils/package_info.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.appColors.aboutPageBackgroundColor,
        elevation: 1,
      ),
      backgroundColor: context.appColors.aboutPageBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(28),
              child: Assets.images.raster.launcherIcon.image(width: 120, height: 120),
            ),
            const SizedBox(
              height: 12,
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
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: context.appColors.secondaryButtonBackgroundColor,
                        padding: const EdgeInsets.symmetric(vertical: 18)),
                    child: Text(
                      'rate_us'.tr(),
                      style: context.appTextTheme.secondaryButtonWebTextStyle,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            SafeArea(child: TextButton(onPressed: () {}, child: Text('licence_agreement'.tr()))),
            const SizedBox(
              height: 4,
            ),
          ],
        ),
      ),
    );
  }
}
