import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/infinite_list_pagination.dart';
import 'package:flyday_broker/common/widgets/dashboard_web_view_wrapper_footer.dart';

import 'app_web_back_button.dart';
import 'dashboard_web_view_wrapper_navbar.dart';

class DashboardWebViewWrapper extends StatelessWidget {
  final Widget child;
  final Function()? onMaxScrollExtent;
  final Function()? onScroll;
  final Function()? onScrollDown;
  final Function()? onScrollUp;
  final double maxScrollExtentThreshold;
  final bool isChildExpanded;
  const DashboardWebViewWrapper({
    Key? key,
    required this.child,
    this.onMaxScrollExtent,
    this.maxScrollExtentThreshold = 0.9,
    this.onScroll,
    this.onScrollDown,
    this.onScrollUp,
    this.isChildExpanded = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isChildExpanded
          ? Column(
              children: [
                const DashboardWebViewWrapperNavbar(),
                Expanded(child: _buildSliverInside(context, child, true)),
              ],
            )
          : InfiniteListPagination(
              onMaxScrollExtent: onMaxScrollExtent,
              onScroll: onScroll,
              onScrollDown: onScrollDown,
              onScrollUp: onScrollUp,
              builder: (context, scrollController) => CustomScrollView(
                controller: scrollController,
                slivers: [
                  const SliverAppBar(
                    title: DashboardWebViewWrapperNavbar(),
                    floating: true,
                    automaticallyImplyLeading: false,
                    toolbarHeight: 64,
                  ),
                  SliverToBoxAdapter(child: _buildSliverInside(context, child, false)),
                ],
              ),
            ),
    );
  }

  Widget _buildSliverInside(BuildContext context, Widget child, bool isChildExpanded) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(),
        Expanded(
          flex: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              if (context.router.canPop()) ...[
                const AppWebBackButton(),
                const SizedBox(
                  height: 19,
                ),
              ],
              child,
              const SizedBox(
                height: 40,
              ),
              const DashboardWebViewWrapperFooter(),
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
