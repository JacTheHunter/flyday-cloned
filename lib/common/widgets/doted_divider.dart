import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

class DotedDivider extends StatelessWidget {
  const DotedDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1,
      child: LayoutBuilder(builder: (context, constraints) {
        final totalDashesWithSpacesCount = constraints.maxWidth.toInt();
        if (constraints.maxWidth < 2) return Container();
        return Row(
          children: [
            ...List.generate(
              totalDashesWithSpacesCount,
              (index) => Container(
                height: 1,
                width: 1,
                color: index.isEven ? context.appColors.dividerColor : null,
              ),
            ),
          ],
        );
      }),
    );
  }
}
