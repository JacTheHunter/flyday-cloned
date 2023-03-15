import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';

import '../models/message_file.dart';

class MessageImageProvider extends EasyImageProvider {
  final List<MessageFile> files;
  @override
  final int initialIndex;

  MessageImageProvider({required this.files, this.initialIndex = 0});

  @override
  ImageProvider<Object> imageBuilder(BuildContext context, int index) {
    ImageProvider imageProvider = NetworkImage(files[index].path);

    return imageProvider;
  }

  @override
  int get imageCount => files.length;
}
