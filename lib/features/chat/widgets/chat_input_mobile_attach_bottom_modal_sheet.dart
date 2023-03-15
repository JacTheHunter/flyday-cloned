import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/services/media/i_media_service.dart';
import 'package:flyday_broker/common/services/permission/i_permission_service.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/utils/platform.dart';
import 'package:flyday_broker/common/widgets/app_bottom_sheet.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

import '../../../common/models/file_name_with_file_bytes.dart';
import '../../../route/app_router.gr.dart';
import '../../camera_and_local_images/blocs/local_images_bloc/local_images_bloc.dart';
import '../../camera_and_local_images/camera_and_local_images_bloc/camera_and_local_images_bloc.dart';
import '../../camera_and_local_images/widgets/camera_and_local_images.dart';
import '../../file_manager/models/document.dart';
import '../../file_manager/widgets/my_documents_pop_up.dart';

class ChatInputMobileAttachBottomModalSheet extends StatelessWidget {
  final void Function(List<String> files) onFilesSelected;
  final void Function(List<String> files) onImagesSelected;
  final void Function(List<FileNameWithFileBytes> files) onFilesSelectedFromWeb;
  final void Function(List<Document> documents)? onDocumentsSelected;
  // final SendMessageBloc sendMessageBloc;
  const ChatInputMobileAttachBottomModalSheet({
    Key? key,
    required this.onFilesSelected,
    required this.onImagesSelected,
    required this.onFilesSelectedFromWeb,
    this.onDocumentsSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      child: BlocProvider(
        create: (context) => LocalImagesBloc(
          mediaService: context.read(),
          onImagesSelected: onImagesSelected,
        ),
        child: Builder(builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!kIsWeb) ...[
                BlocProvider(
                  create: (context) => CameraAndLocalImagesBloc(
                    permissionService: context.read<IPermissionService>(),
                    localImagesBloc: context.read(),
                  )..add(const CameraAndLocalImagesEvent.start()),
                  child: Builder(builder: (context) {
                    return BlocBuilder<CameraAndLocalImagesBloc, CameraAndLocalImagesState>(
                      builder: (context, state) {
                        return Column(
                          children: [
                            if (state.hasPhotosPermission || state.hasCameraPermission) ...[
                              CameraAndLocalImages(
                                hasCameraPemission: state.hasCameraPermission,
                                onCameraItemTap: () => _onCameraItemTap(context, onImagesSelected),
                              ),
                            ],
                            if (!state.hasCameraPermission) ...[
                              InkWell(
                                onTap: () async {
                                  context
                                      .read<CameraAndLocalImagesBloc>()
                                      .add(CameraAndLocalImagesEvent.askCameraPermission(context));
                                },
                                child: Ink(
                                  padding: const EdgeInsets.symmetric(vertical: 17),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.photo_camera,
                                        color:
                                            context.appColors.chatInputMobileAttachModalBottomSheetTextStyleIconColor,
                                        size: 24,
                                      ),
                                      // Assets.images.vector.photo.svg(),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'take_photo'.tr(),
                                        style: context.appTextTheme.chatInputMobileAttachModalBottomSheetTextStyle,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const Divider(),
                            ],
                            if (!state.hasPhotosPermission) ...[
                              InkWell(
                                onTap: () async {
                                  context
                                      .read<CameraAndLocalImagesBloc>()
                                      .add(CameraAndLocalImagesEvent.askPhotosPermission(context));
                                },
                                child: Ink(
                                  padding: const EdgeInsets.symmetric(vertical: 17),
                                  child: Row(
                                    children: [
                                      Assets.images.vector.photo.svg(),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'select_photo'.tr(),
                                        style: context.appTextTheme.chatInputMobileAttachModalBottomSheetTextStyle,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const Divider(),
                            ],
                          ],
                        );
                      },
                    );
                  }),
                )
              ],
              InkWell(
                onTap: () async {
                  if (kIsWeb) {
                    final files = await context.read<IMediaService>().pickMultipleFilesNamesWithPathes(
                          context,
                        );
                    if (files != null) {
                      onFilesSelectedFromWeb(files);
                    }
                  } else {
                    final filePathes = await context.read<IMediaService>().pickMultipleFilesPathes(
                          context,
                        );
                    if (filePathes != null) {
                      onFilesSelected(filePathes);
                    }
                  }
                  context.router.pop();
                },
                child: Ink(
                  padding: const EdgeInsets.symmetric(vertical: 17),
                  child: Row(
                    children: [
                      Assets.images.vector.filePresent.svg(),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        'select_file'.tr(),
                        style: context.appTextTheme.chatInputMobileAttachModalBottomSheetTextStyle,
                      )
                    ],
                  ),
                ),
              ),
              if (onDocumentsSelected != null) ...[
                const Divider(),
                InkWell(
                  onTap: () {
                    context.router.pop();
                    if (isWebMobileOrMobile) {
                      context.router.push(
                          MyDocumentsRoute(isSelectionModeAvailable: true, onDocumentsSelected: onDocumentsSelected!));
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => MyDocumentsPopUp(
                          isSelectionModeAvailable: true,
                          onDocumentsSelected: onDocumentsSelected!,
                        ),
                      );
                    }
                  },
                  child: Ink(
                    padding: const EdgeInsets.symmetric(vertical: 17),
                    child: Row(
                      children: [
                        Assets.images.vector.topic.svg(),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          'my_documents'.tr(),
                          style: context.appTextTheme.chatInputMobileAttachModalBottomSheetTextStyle,
                        )
                      ],
                    ),
                  ),
                ),
              ],
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  BlocSelector<LocalImagesBloc, LocalImagesState, bool>(
                    selector: (state) {
                      return state.selectedIndexes.isNotEmpty;
                    },
                    builder: (context, state) {
                      return Expanded(
                        child: Row(
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
                            if (state) ...[
                              const SizedBox(
                                width: 23,
                              ),
                              Expanded(
                                child: ElevatedButton(
                                    onPressed: () {
                                      context.read<LocalImagesBloc>().add(const LocalImagesEvent.sendSelected());
                                      if (context.read<LocalImagesBloc>().state.selectedIndexes.isNotEmpty) {
                                        context.router.pop();
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(vertical: 18),
                                    ),
                                    child: Text('send'.tr())),
                              ),
                            ]
                          ],
                        ),
                      );
                    },
                  ),
                ],
              )
            ],
          );
        }),
      ),
    );
  }

  void _onCameraItemTap(BuildContext context, Function(List<String> pathes) onImagesSelected) async {
    final path = await context.read<IMediaService>().pickImagePath(context, AppImageSource.camera);
    if (path != null && path.isNotEmpty) {
      onImagesSelected([path]);
    }
  }
}
