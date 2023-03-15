import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

import '../blocs/file_manager_bloc/file_manager_bloc.dart';

class MyDocumentsViewMobileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyDocumentsViewMobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final fileManagerBloc = context.read<FileManagerBloc>();
    return AppBar(
      backgroundColor: context.appColors.appBarAuthenticationBackgroundColor,
      elevation: 1,
      title: BlocBuilder<FileManagerBloc, FileManagerState>(
        builder: (context, state) {
          return Text(
            state.selectionMode && state.selectedDocumentsIds.isNotEmpty
                ? 'selected:'.tr() + state.selectedDocumentsIds.length.toString()
                : 'my_documents'.tr(),
          );
        },
      ),
      actions: [
        BlocBuilder<FileManagerBloc, FileManagerState>(
          builder: (context, state) {
            return AnimatedSwitcher(
              duration: kThemeAnimationDuration,
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: state.status is LoadingStatus
                  ? Container(
                      height: 20,
                      width: 20,
                      margin: const EdgeInsets.only(right: 20),
                      child: const CircularProgressIndicator())
                  : !state.selectionMode
                      ? IconButton(
                          key: const ValueKey('check'),
                          onPressed: () {
                            fileManagerBloc.add(const FileManagerEvent.toggleSelectionMode());
                          },
                          icon: const Icon(Icons.check))
                      : state.selectionMode && state.selectedDocumentsIds.isEmpty
                          ? IconButton(
                              key: const ValueKey('select'),
                              onPressed: () {
                                fileManagerBloc.add(const FileManagerEvent.toggleSelectionMode());
                              },
                              icon: Assets.images.vector.edit.svg())
                          : state.selectionMode && state.selectedDocumentsIds.isNotEmpty
                              ? IconButton(
                                  key: const ValueKey('unselect'),
                                  onPressed: () {
                                    fileManagerBloc.add(const FileManagerEvent.unselectAll());
                                  },
                                  icon: const Icon(Icons.close))
                              : Container(),
            );
          },
        )
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
