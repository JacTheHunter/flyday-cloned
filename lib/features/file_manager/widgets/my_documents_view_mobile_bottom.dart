import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

import 'package:flyday_broker/features/file_manager/repositories/i_file_manager_repository.dart';

import '../../../common/utils/check_state_status.dart';
import '../blocs/file_manager_bloc/file_manager_bloc.dart';
import '../blocs/section_document_editor_cubit/section_document_editor_bloc.dart';
import '../models/document.dart';

class MyDocumentsViewMobileBottom extends StatelessWidget {
  final bool selectionMode;
  final void Function(List<Document> documents) onDocumentsSelected;
  const MyDocumentsViewMobileBottom({super.key, required this.selectionMode, required this.onDocumentsSelected});

  @override
  Widget build(BuildContext context) {
    final fileManagerBloc = context.read<FileManagerBloc>();
    final fileManagerRepository = context.read<IFileManagerRepository>();
    return Column(
      children: [
        const SizedBox(
          height: 22,
        ),
        AnimatedSwitcher(
          duration: kThemeAnimationDuration,
          transitionBuilder: (Widget child, Animation<double> animation) {
            return SlideTransition(
                position: Tween(begin: const Offset(0.0, 1.0), end: const Offset(0.0, 0.0)).animate(animation),
                child: child);
          },
          child: selectionMode
              ? Row(
                  key: const ValueKey('buttons selection mode'),
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            context.router.pop();
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 18),
                            backgroundColor: context.appColors.secondaryButtonBackgroundColor,
                          ),
                          child: Text(
                            'cancel'.tr(),
                            style: context.appTextTheme.secondaryButtonWebTextStyle,
                          )),
                    ),
                    const SizedBox(
                      width: 23,
                    ),
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            final documents = fileManagerBloc.state.documents
                                .where((element) => fileManagerBloc.state.selectedDocumentsIds.contains(element.id))
                                .toList();
                            if (documents.isNotEmpty) {
                              onDocumentsSelected(documents);
                            }
                            context.router.pop();
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 18),
                          ),
                          child: Text('submit'.tr())),
                    ),
                  ],
                )
              : Row(
                  key: const ValueKey('button edit mode'),
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () => _onAddSection(context, fileManagerRepository, fileManagerBloc),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 18),
                            backgroundColor: context.appColors.secondaryButtonBackgroundColor,
                          ),
                          child: Text(
                            'add_section'.tr(),
                            style: context.appTextTheme.secondaryButtonWebTextStyle,
                          )),
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}

void _onAddSection(
    BuildContext context, IFileManagerRepository fileManagerRepository, FileManagerBloc fileManagerBloc) {
  showDialog(
    context: context,
    builder: (context) => RepositoryProvider<IFileManagerRepository>.value(
      value: fileManagerRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: fileManagerBloc,
          ),
          BlocProvider(
            create: (context) => SectionDocumentEditorBloc(
              fileManagerBloc: context.read(),
              repository: context.read(),
              initialValue: '',
              type: Type.section,
            ),
          ),
        ],
        child: Builder(builder: (context) {
          return BlocConsumer<SectionDocumentEditorBloc, SectionDocumentEditorState>(
            listener: (context, state) {
              checkStateStatusForError(context, state.status);
              if (state.status is SuccessStatus) {
                context.router.pop();
              }
            },
            builder: (context, state) {
              final sectionDocumentEditorBloc = context.read<SectionDocumentEditorBloc>();
              return AlertDialog(
                title: Row(
                  children: [
                    Expanded(child: Text('add_new_section'.tr())),
                    if (state.status is LoadingStatus)
                      const SizedBox(height: 20, width: 20, child: CircularProgressIndicator()),
                  ],
                ),
                content: TextFormField(
                  onChanged: (value) => sectionDocumentEditorBloc.add(SectionDocumentEditorEvent.setValue(value)),
                  initialValue: '',
                  decoration: InputDecoration(
                    hintText: 'section_name'.tr(),
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.router.pop();
                    },
                    child: Text(
                      'cancel'.tr(),
                      style: context.appTextTheme.dialogSecondaryActionTextStyle,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      sectionDocumentEditorBloc.add(const SectionDocumentEditorEvent.save());
                    },
                    child: Text(
                      'submit'.tr(),
                    ),
                  ),
                ],
              );
            },
          );
        }),
      ),
    ),
  );
}
