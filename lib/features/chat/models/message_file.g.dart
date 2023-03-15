// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageFile _$$_MessageFileFromJson(Map<String, dynamic> json) =>
    _$_MessageFile(
      path: json['file'] as String,
      name: json['file_name'] as String? ?? '',
      type: json['file_type'] as String? ?? '',
      size: json['file_size'] as String? ?? '',
    );

Map<String, dynamic> _$$_MessageFileToJson(_$_MessageFile instance) =>
    <String, dynamic>{
      'file': instance.path,
      'file_name': instance.name,
      'file_type': instance.type,
      'file_size': instance.size,
    };
