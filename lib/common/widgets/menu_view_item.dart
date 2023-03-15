import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/widgets/app_count.dart';

import '../blocs/cubit/app_overlays_cubit.dart';

class MenuViewItem extends StatelessWidget {
  final Widget? icon;
  final String? label;
  final void Function()? onTap;
  final int? count;
  final String? value;
  final bool hasBottomBorder;
  const MenuViewItem({
    Key? key,
    this.icon,
    this.label,
    this.onTap,
    this.count,
    this.value,
    this.hasBottomBorder = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        onTap?.call();
        context.read<AppOverlaysCubit>().setType(AppOverlayType.none);
      },
      child: Ink(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Container(
          padding: const EdgeInsets.only(bottom: 16),
          decoration: hasBottomBorder
              ? BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: context.appColors.dividerColor),
                  ),
                  // borderRadius: BorderRadius.circular(12),
                )
              : null,
          child: Row(
            children: [
              if (icon != null) ...[
                icon!,
                const SizedBox(
                  width: 8,
                ),
              ],
              if (label != null)
                Expanded(
                  child: Text(
                    label!,
                    style: context.appTextTheme.menuItemTextStyle,
                  ),
                ),
              if (count != null) AppCount(count: count!),
              if (value != null)
                Text(
                  value!,
                  style: context.appTextTheme.menuItemValueTextStyle,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
