import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/utils/infinite_list_pagination.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

import '../../../common/utils/check_state_status.dart';
import '../blocs/file_manager_bloc/file_manager_bloc.dart';
import '../models/document.dart';
import 'my_documents_view_item_mobile.dart';
import 'my_documents_view_mobile_app_bar.dart';
import 'my_documents_view_mobile_bottom.dart';

class MyDocumentsViewMobile extends StatelessWidget {
  final void Function(List<Document> documents) onDocumentsSelected;
  const MyDocumentsViewMobile({super.key, required this.onDocumentsSelected});

  @override
  Widget build(BuildContext context) {
    final fileManagerBloc = context.read<FileManagerBloc>();
    return Scaffold(
      appBar: const MyDocumentsViewMobileAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 16),
        child: BlocConsumer<FileManagerBloc, FileManagerState>(
          listener: (context, state) {
            checkStateStatusForError(context, state.status);
          },
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: InfiniteListPagination(
                    onMaxScrollExtent: () => fileManagerBloc.add(const FileManagerEvent.fetchDocuments(true)),
                    builder: (context, controller) {
                      if (state.sections.isEmpty && state.status is! LoadingStatus) {
                        return Center(
                          child: Column(
                            children: [
                              const Spacer(),
                              Assets.images.vector.noFiles.svg(),
                              const SizedBox(
                                height: 24,
                              ),
                              Text('you_dont_have_saved_docs'.tr(), style: context.appTextTheme.noFilesTextStyle),
                              const Spacer(),
                            ],
                          ),
                        );
                      }
                      return ListView.builder(
                        controller: controller,
                        itemCount: state.sectionsWithDocuments.length + 1,
                        itemBuilder: (context, index) => index == state.sectionsWithDocuments.length
                            ? state.status is LoadingStatus
                                ? const Center(child: CircularProgressIndicator())
                                : const SizedBox.shrink()
                            : MyDocumentsViewItemMobile(
                                item: state.sectionsWithDocuments[index],
                                selectedItemsList: state.selectedDocumentsIds,
                                selectionMode: state.selectionMode,
                              ),
                      );
                    },
                  ),
                ),
                MyDocumentsViewMobileBottom(
                  selectionMode: state.selectionMode,
                  onDocumentsSelected: onDocumentsSelected,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
