import 'package:flutter/material.dart';
import 'package:photo_gallery/photo_gallery.dart';

import '../../models/file_name_with_file_bytes.dart';

enum AppImageSource {
  camera,
  gallery,
}

abstract class IMediaService {
  Future<String?> pickImagePath(
    BuildContext context,
    AppImageSource appImageSource,
  );
  Future<List<String>?> pickMultipleImagesPathes(
    BuildContext context,
  );

  Future<List<String>?> pickMultipleFilesPathes(
    BuildContext context,
  );

  Future<List<FileNameWithFileBytes>?> pickMultipleFilesNamesWithPathes(
    BuildContext context,
  );

  Future<List<Medium>?> loadLocalImagesMediums({
    required int skip,
    required int take,
  });
}
