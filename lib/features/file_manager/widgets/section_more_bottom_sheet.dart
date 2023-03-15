import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/file_manager/models/section.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

import '../../../common/models/state_status.dart';
import '../../../common/utils/check_state_status.dart';
import '../../../common/widgets/app_bottom_sheet.dart';
import '../../../common/widgets/app_bottom_sheet_option.dart';
import '../blocs/file_manager_bloc/file_manager_bloc.dart';
import '../blocs/section_document_editor_cubit/section_document_editor_bloc.dart';
import '../repositories/i_file_manager_repository.dart';

class SectionMoreBottomSheet extends StatelessWidget {
  final Section section;
  final IFileManagerRepository fileManagerRepository;
  final FileManagerBloc fileManagerBloc;
  const SectionMoreBottomSheet({
    super.key,
    required this.section,
    required this.fileManagerRepository,
    required this.fileManagerBloc,
  });

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      child: Column(
        children: [
          AppBottomSheetOption(
            onTap: () => _onRenameSection(context, section, fileManagerRepository, fileManagerBloc),
            text: 'rename_section',
            icon: Assets.images.vector.editFile.svg(),
          ),
          AppBottomSheetOption(
            onTap: () {
              context.router.pop();

              fileManagerBloc.add(FileManagerEvent.deleteSection(section.id));
            },
            text: 'delete_section',
            icon: Assets.images.vector.delete.svg(),
          )
        ],
      ),
    );
  }

  void _onRenameSection(BuildContext context, Section section, IFileManagerRepository fileManagerRepository,
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
                initialValue: section.name,
                type: Type.section,
                id: section.id,
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
                      Expanded(child: Text('edit_section'.tr())),
                      if (state.status is LoadingStatus)
                        const SizedBox(height: 20, width: 20, child: CircularProgressIndicator()),
                    ],
                  ),
                  content: TextFormField(
                    onChanged: (value) => sectionDocumentEditorBloc.add(SectionDocumentEditorEvent.setValue(value)),
                    initialValue: section.name,
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
}
