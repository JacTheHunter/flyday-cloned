import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class InfiniteListPagination extends StatefulWidget {
  final Function(BuildContext context, AutoScrollController scrollController) builder;
  final Function()? onMaxScrollExtent;
  final Function()? onScroll;
  final Function()? onScrollDown;
  final Function()? onScrollUp;
  final double maxScrollExtentThreshold;
  const InfiniteListPagination({
    Key? key,
    required this.builder,
    this.onMaxScrollExtent,
    this.maxScrollExtentThreshold = 0.9,
    this.onScroll,
    this.onScrollDown,
    this.onScrollUp,
  }) : super(key: key);

  @override
  State<InfiniteListPagination> createState() => _InfiniteListPaginationState();
}

class _InfiniteListPaginationState extends State<InfiniteListPagination> {
  late final AutoScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = AutoScrollController();
    scrollController.addListener(() {
      widget.onScroll?.call();
      if ((scrollController.position.maxScrollExtent * widget.maxScrollExtentThreshold) <
          scrollController.position.pixels) {
        widget.onMaxScrollExtent?.call();
      }
      if (scrollController.position.userScrollDirection == ScrollDirection.reverse) {
        widget.onScrollDown?.call();
      } else {
        widget.onScrollUp?.call();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(
      context,
      scrollController,
    );
  }
}
