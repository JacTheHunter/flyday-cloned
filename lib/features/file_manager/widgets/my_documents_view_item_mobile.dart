import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/services/media/i_media_service.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/file_manager/models/section_with_documents.dart';
import 'package:flyday_broker/features/file_manager/widgets/section_more_bottom_sheet.dart';
import 'package:open_filex/open_filex.dart';
import 'package:pspdfkit_flutter/pspdfkit.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../common/models/state_status.dart';
import '../../../common/utils/check_state_status.dart';
import '../../../common/utils/platform.dart';
import '../../../gen/assets.gen.dart';
import '../../chat/blocs/file_message_cache_bloc/file_message_cache_bloc.dart';
import '../blocs/file_manager_bloc/file_manager_bloc.dart';
import '../repositories/i_file_manager_repository.dart';
import 'document_more_bottom_sheet.dart';

class MyDocumentsViewItemMobile extends StatelessWidget {
  final SectionWithDocuments item;
  final List<int> selectedItemsList;
  final bool selectionMode;
  const MyDocumentsViewItemMobile({
    super.key,
    required this.item,
    required this.selectedItemsList,
    required this.selectionMode,
  });

  @override
  Widget build(BuildContext context) {
    final fileManagerBloc = context.read<FileManagerBloc>();
    final fileManagerRepository = context.read<IFileManagerRepository>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                item.section.name,
                style: context.appTextTheme.sectionTextStyle,
              ),
            ),
            AnimatedScale(
              duration: kThemeAnimationDuration,
              scale: !selectionMode ? 1 : 0,
              child: SizedBox(
                height: 20,
                width: 20,
                child: IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () async {
                      if (kIsWeb) {
                        final files = await context.read<IMediaService>().pickMultipleFilesNamesWithPathes(
                              context,
                            );
                        if (files != null) {
                          fileManagerBloc.add(
                            FileManagerEvent.uploadDocumentsFromWeb(
                              item.section.id,
                              files,
                            ),
                          );
                        }
                      } else {
                        final filePathes = await context.read<IMediaService>().pickMultipleFilesPathes(
                              context,
                            );
                        if (filePathes != null) {
                          fileManagerBloc.add(
                            FileManagerEvent.uploadDocuments(
                              item.section.id,
                              filePathes,
                            ),
                          );
                        }
                      }
                    },
                    icon: Assets.images.vector.paperClip.svg()),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            AnimatedScale(
              duration: kThemeAnimationDuration,
              scale: !selectionMode ? 1 : 0,
              child: SizedBox(
                height: 20,
                width: 20,
                child: IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => SectionMoreBottomSheet(
                          fileManagerRepository: fileManagerRepository,
                          fileManagerBloc: fileManagerBloc,
                          section: item.section,
                        ),
                      );
                    },
                    icon: Assets.images.vector.moreDots.svg()),
              ),
            ),
            if (isWebDesktop)
              const SizedBox(
                width: 30,
              ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        ...item.documents.map(
          (document) {
            final isSelected = selectedItemsList.contains(document.id);

            return BlocProvider(
              create: (context) =>
                  FileMessageCacheBloc(path: document.filePath)..add(const FileMessageCacheEvent.start()),
              child: Builder(builder: (context) {
                final fileMessageCacheBloc = context.read<FileMessageCacheBloc>();
                return BlocConsumer<FileMessageCacheBloc, FileMessageCacheState>(
                  listener: (context, state) {
                    checkStateStatusForError(context, state.status);
                    if (state.status is SuccessStatus) {
                      _openFile(state.localFilePath!);
                    }
                  },
                  builder: (context, state) {
                    return Material(
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {
                            if (selectionMode) {
                              fileManagerBloc.add(FileManagerEvent.selectDocument(document.id));
                            } else {
                              if (state.localFilePath != null) {
                                _openFile(state.localFilePath!);
                              } else {
                                fileMessageCacheBloc.add(const FileMessageCacheEvent.cache());
                              }
                            }
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                              color: context.appColors.fileItemBackgroundColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: context.appColors.fileItemIconBackgroundColor,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                                  child: state.status is LoadingStatus
                                      ? SizedBox(
                                          width: 24,
                                          height: 24,
                                          child: CircularProgressIndicator(
                                            color: context.appColors.progressIndicatorReverseColor,
                                            value: state.progress,
                                          ),
                                        )
                                      : Assets.images.vector.fileClip.svg(),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              document.fileName,
                                              style: context.appTextTheme.fileNameTextStyle,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              document.fileSize,
                                              style: context.appTextTheme.fileSizeTextStyle,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                AnimatedSwitcher(
                                  duration: kThemeAnimationDuration,
                                  transitionBuilder: (Widget child, Animation<double> animation) {
                                    return ScaleTransition(scale: animation, child: child);
                                  },
                                  child: selectionMode
                                      ? AnimatedContainer(
                                          duration: kThemeAnimationDuration,
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            color: isSelected ? context.appColors.primaryColor : null,
                                            border: isSelected
                                                ? null
                                                : Border.all(width: 2, color: context.appColors.primaryColor),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: Center(
                                            child: AnimatedScale(
                                              scale: isSelected ? 1 : 0,
                                              duration: kThemeAnimationDuration,
                                              child: Icon(
                                                Icons.check,
                                                color: context.appColors.checkboxIconColor,
                                                size: 18,
                                              ),
                                            ),
                                          ),
                                        )
                                      : SizedBox(
                                          height: 24,
                                          width: 24,
                                          child: IconButton(
                                            padding: const EdgeInsets.all(0),
                                            onPressed: () {
                                              showModalBottomSheet(
                                                context: context,
                                                builder: (context) => DocumentMoreBottomSheet(
                                                  fileManagerRepository: fileManagerRepository,
                                                  fileManagerBloc: fileManagerBloc,
                                                  document: document,
                                                ),
                                              );
                                            },
                                            icon: Assets.images.vector.moreDots.svg(),
                                          ),
                                        ),
                                ),
                                if (kIsWeb)
                                  const SizedBox(
                                    width: 30,
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }),
            );
          },
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }

  void _openFile(String path) {
    if (kIsWeb) {
      launchUrl(Uri.parse(path));
    } else {
      if (path.endsWith('pdf')) {
        Pspdfkit.present(path);
      } else {
        OpenFilex.open(path);
      }
    }
  }
}
