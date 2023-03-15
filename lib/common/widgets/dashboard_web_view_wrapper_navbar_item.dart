import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

import 'app_count.dart';

class DashboardWebViewWrapperNavbarItem extends StatelessWidget {
  final Widget child;
  final bool isActive;
  final bool hasBottomDivider;
  final Function()? onPressed;
  final int? statusCount;
  const DashboardWebViewWrapperNavbarItem(
      {Key? key,
      required this.child,
      this.isActive = false,
      this.onPressed,
      this.statusCount,
      this.hasBottomDivider = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide.none,
        ),
        side: BorderSide.none,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        minimumSize: const Size(0, 0),
      ),
      onPressed: onPressed ?? () {},
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IntrinsicWidth(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    child,
                    SizedBox(
                      height: isActive ? 20 : 24,
                    ),
                    if (isActive)
                      Container(
                        height: 4,
                        decoration: BoxDecoration(
                          color: context.appColors.adsViewWebNavbarActiveColor,
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(50)),
                        ),
                      ),
                  ],
                ),
              ),
              if (statusCount != null) ...[
                const SizedBox(
                  width: 4,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: AppCount(count: statusCount!),
                ),
                // ],
              ],
            ],
          ),
          if (hasBottomDivider) const Divider(),
        ],
      ),
    );
  }
}
