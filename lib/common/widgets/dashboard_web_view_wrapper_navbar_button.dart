import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

class DashboardWebViewWrapperNavbarButton extends StatelessWidget {
  final Widget child;
  final Function()? onPressed;
  final bool hasIndicator;
  const DashboardWebViewWrapperNavbarButton({
    Key? key,
    required this.child,
    this.onPressed,
    this.hasIndicator = false,
  }) : super(key: key);

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
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        minimumSize: const Size(0, 0),
      ),
      onPressed: onPressed ?? () {},
      child: Stack(
        children: [
          SizedBox(height: 40, child: child),
          if (hasIndicator)
            Positioned(
              top: 5,
              right: 0,
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: context.appColors.unreadDotIndicatorColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                    style: BorderStyle.solid,
                    strokeAlign: StrokeAlign.outside,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
