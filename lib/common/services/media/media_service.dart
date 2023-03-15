import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flyday_broker/common/services/media/i_media_service.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_gallery/photo_gallery.dart';

import '../../models/file_name_with_file_bytes.dart';
import '../../utils/repository_exception.dart';
import '../permission/i_permission_service.dart';

class MediaService implements IMediaService {
  final IPermissionService _permissionService;

  MediaService({required IPermissionService permissionService}) : _permissionService = permissionService;

  @override
  Future<String?> pickImagePath(BuildContext context, AppImageSource appImageSource) async {
    bool canProceed = kIsWeb ? true : await _handleImagePickPermissions(context, appImageSource);

    if (canProceed) {
      final imagePicker = ImagePicker();

      final file = await imagePicker.pickImage(source: ImageSource.values.byName(appImageSource.name));

      if (file != null) {
        return file.path;
      }
    }
    return null;
  }

  @override
  Future<List<String>?> pickMultipleImagesPathes(
    BuildContext context,
  ) async {
    bool canProceed = kIsWeb ? true : await _handleImagePickPermissions(context, AppImageSource.gallery);

    if (canProceed) {
      final imagePicker = ImagePicker();

      final files = await imagePicker.pickMultiImage();

      if (files != null && files.isNotEmpty) {
        return files.map((e) => e.path).toList();
      }
    }
    return null;
  }

  Future<bool> _handleImagePickPermissions(BuildContext context, AppImageSource imageSource) async {
    if (imageSource == AppImageSource.camera) {
      return await _permissionService.handleCameraPermission(context);
    } else if (imageSource == AppImageSource.gallery) {
      return await _permissionService.handlePhotosPermission(context);
    } else {
      return false;
    }
  }

  @override
  Future<List<String>?> pickMultipleFilesPathes(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true);
    if (result != null) {
      List<String> cleanPathes = [];
      for (var p in result.paths) {
        if (p != null && p.isNotEmpty) {
          cleanPathes.add(p);
        }
      }
      if (cleanPathes.isNotEmpty) return cleanPathes;
    }
    return null;
  }

  @override
  Future<List<FileNameWithFileBytes>?> pickMultipleFilesNamesWithPathes(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true);
    if (result != null) {
      List<FileNameWithFileBytes> files = [];
      for (var p in result.files) {
        if (p.bytes != null) {
          files.add(FileNameWithFileBytes(bytes: p.bytes!, fileName: p.name));
        }
      }
      if (files.isNotEmpty) return files;
    }
    return null;
  }

  @override
  Future<List<Medium>?> loadLocalImagesMediums({required int skip, required int take}) async {
    try {
      final List<Album> imageAlbums = await PhotoGallery.listAlbums(
        mediumType: MediumType.image,
        hideIfEmpty: true,
      );

      final mediaPage = await imageAlbums.first.listMedia(skip: skip, take: take);

      return mediaPage.items;

      // imageAlbums.forEach((album) {
      //   mediums.add(album.listMedia())
      // });

      // final List<Album> videoAlbums = await PhotoGallery.listAlbums(mediumType: mediumType.video, hideIfEmpty: false);

      // final start = page * limit;

      // final end = start + limit;

      // final pathes = await pager.latestImages(start, end);

      // return pathes;
    } catch (e) {
      throw RepositoryException(message: e.toString());
    }
  }
}
