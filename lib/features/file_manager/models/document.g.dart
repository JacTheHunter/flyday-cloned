// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Document _$$_DocumentFromJson(Map<String, dynamic> json) => _$_Document(
      id: json['id'] as int,
      sectionId: json['section'] as int,
      filePath: json['file'] as String,
      fileName: json['file_name'] as String,
      fileSize: json['file_size'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$_DocumentToJson(_$_Document instance) =>
    <String, dynamic>{
      'id': instance.id,
      'section': instance.sectionId,
      'file': instance.filePath,
      'file_name': instance.fileName,
      'file_size': instance.fileSize,
      'created_at': instance.createdAt,
    };
