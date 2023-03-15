import 'dart:convert';

import 'package:flyday_broker/common/models/file_name_with_file_path.dart';
import 'package:image_picker/image_picker.dart';

import '../models/file_name_with_file_bytes.dart';
import '../models/file_name_with_file_string_in_b64.dart';

String fileBytesToBase64(List<int> bytes) {
  return base64Encode(bytes);
}

Future<String> filePathToBase64(String path) async {
  return fileBytesToBase64(await XFile(path).readAsBytes());
}

Future<List<String>> filePathsListToBase64List(List<String> filePaths) async {
  List<String> result = [];
  for (var path in filePaths) {
    result.add(fileBytesToBase64(await XFile(path).readAsBytes()));
  }
  return result;
}

Future<FileNameWithFileStringInB64> fileNameWithFileStringInB64FromPath(String path) async {
  final file = XFile(path);
  final fileStringInB64 = await filePathToBase64(file.path);
  return FileNameWithFileStringInB64(fileName: file.name, fileStringInB64: fileStringInB64);
}

Future<List<FileNameWithFileStringInB64>> filePathsListToFileNameWithFileStringInB64List(List<String> filePaths) async {
  List<FileNameWithFileStringInB64> result = [];
  for (var path in filePaths) {
    result.add(await fileNameWithFileStringInB64FromPath(path));
  }
  return result;
}

List<FileNameWithFileStringInB64> fileNamesWithBytesToFileNameWithFileStringInB64List(
    List<FileNameWithFileBytes> files) {
  List<FileNameWithFileStringInB64> result = [];
  for (var file in files) {
    result.add(FileNameWithFileStringInB64(fileName: file.fileName, fileStringInB64: fileBytesToBase64(file.bytes)));
  }
  return result;
}

Future<FileNameWithFilePath> fileNameWithFileSPath(String path) async {
  final file = XFile(path);
  return FileNameWithFilePath(fileName: file.name, filePath: path);
}

Future<List<FileNameWithFilePath>> filePathsListToFileNameWithFilePathesList(List<String> filePaths) async {
  List<FileNameWithFilePath> result = [];
  for (var path in filePaths) {
    result.add(await fileNameWithFileSPath(path));
  }
  return result;
}
