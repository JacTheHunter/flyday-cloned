import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/file_manager/models/document.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

import '../../../common/models/state_status.dart';
import '../../../common/utils/check_state_status.dart';
import '../../../common/widgets/app_bottom_sheet.dart';
import '../../../common/widgets/app_bottom_sheet_option.dart';
import '../blocs/file_manager_bloc/file_manager_bloc.dart';
import '../blocs/section_document_editor_cubit/section_document_editor_bloc.dart';
import '../repositories/i_file_manager_repository.dart';

class DocumentMoreBottomSheet extends StatelessWidget {
  final Document document;
  final IFileManagerRepository fileManagerRepository;
  final FileManagerBloc fileManagerBloc;
  const DocumentMoreBottomSheet({
    super.key,
    required this.document,
    required this.fileManagerRepository,
    required this.fileManagerBloc,
  });

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      child: Column(
        children: [
          AppBottomSheetOption(
            onTap: () => _onRenameDocument(context, document, fileManagerRepository, fileManagerBloc),
            text: 'rename_document'.tr(),
            icon: Assets.images.vector.editFile.svg(),
          ),
          AppBottomSheetOption(
            onTap: () {
              context.router.pop();

              fileManagerBloc.add(FileManagerEvent.deleteDocument(document.id));
            },
            text: 'delete_document',
            icon: Assets.images.vector.delete.svg(),
          )
        ],
      ),
    );
  }

  void _onRenameDocument(BuildContext context, Document document, IFileManagerRepository fileManagerRepository,
      FileManagerBloc fileManagerBloc) {
    context.router.pop();
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
                initialValue: document.fileName.split('.').first,
                type: Type.document,
                id: document.id,
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
                      Expanded(child: Text('rename_document'.tr())),
                      if (state.status is LoadingStatus)
                        const SizedBox(height: 20, width: 20, child: CircularProgressIndicator()),
                    ],
                  ),
                  content: TextFormField(
                    onChanged: (value) => sectionDocumentEditorBloc.add(SectionDocumentEditorEvent.setValue(value)),
                    initialValue: document.fileName.split('.').first,
                    decoration: InputDecoration(
                      hintText: 'document_name'.tr(),
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
}
