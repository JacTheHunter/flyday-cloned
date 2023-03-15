import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/chat/models/message.dart';

import '../../../common/widgets/app_image.dart';
import '../models/message_file.dart';
import '../models/message_file_with_size.dart';
import '../models/message_type.dart';
import '../utils/message_files_with_sizes_from_message_files.dart';
import '../utils/message_image_provider.dart';

class ChatMessageItemImages extends StatelessWidget {
  final Message message;
  const ChatMessageItemImages({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (message.messageType == MessageType.image) {
      return FutureBuilder<List<MessageFileWithSize>>(
        future: messageFilesWithSizesFromMessageFiles(message.files),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final imageFiles = snapshot.data ?? [];
            return Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.only(bottom: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: context.appColors.chatMessageFileBorderColor,
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    children: _buildImageCollage(context, imageFiles, constraints),
                  );
                },
              ),
            );
          } else {
            return FittedBox(
                child: CircularProgressIndicator(
              color: context.appColors.progressIndicatorReverseColor,
            ));
          }
        },
      );
    }
    return const SizedBox.shrink();
  }

  List<Widget> _buildImageCollage(
    BuildContext context,
    List<MessageFileWithSize> imageFiles,
    BoxConstraints constraints,
  ) {
    List<Widget> widgets = [];
    int index = 0;
    while (index < imageFiles.length) {
      if (index != 0) {
        widgets.add(const SizedBox(
          height: 2,
        ));
      }
      if (index + 1 < imageFiles.length &&
          imageFiles[index].size.aspectRatio < 1 &&
          imageFiles[index + 1].size.aspectRatio < 1) {
        final int selectedIndex = message.files.indexWhere((element) => element.path == imageFiles[index].file.path);
        final int selectedIndex2 = message.files.indexWhere((element) => element.path == imageFiles[index].file.path);
        widgets.add(Row(
          children: [
            GestureDetector(
              onTap: () => _onTap(context, message.files, selectedIndex),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FittedBox(
                  child: AppImage(
                    // imageUrl: 'https://dev.flyday.io/media/aircraft_photo/aircraft_122/5f277c6306.jpg',
                    imageUrl: imageFiles[index].file.path,
                    width: ((constraints.maxWidth) - 3) / 2,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 1,
            ),
            GestureDetector(
              onTap: () => _onTap(context, message.files, selectedIndex2),
              child: (ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FittedBox(
                  child: AppImage(
                    // imageUrl: 'https://dev.flyday.io/media/aircraft_photo/aircraft_122/5f277c6306.jpg',
                    imageUrl: imageFiles[index + 1].file.path,
                    width: ((constraints.maxWidth) - 3) / 2,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              )),
            ),
          ],
        ));
        index += 2;
      } else {
        final int selectedIndex = message.files.indexWhere((element) => element.path == imageFiles[index].file.path);
        widgets.add(GestureDetector(
          onTap: () => _onTap(context, message.files, selectedIndex),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FittedBox(
              child: AppImage(
                // imageUrl: 'https://dev.flyday.io/media/aircraft_photo/aircraft_122/5f277c6306.jpg',
                imageUrl: imageFiles[index].file.path,
                width: constraints.maxWidth,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ));
        index++;
      }
    }
    return widgets;
  }

  void _onTap(BuildContext context, List<MessageFile> files, int selectedIndex) {
    final customImageProvider = MessageImageProvider(files: files, initialIndex: selectedIndex);
    showImageViewerPager(
      context,
      customImageProvider,
    );
  }
}
