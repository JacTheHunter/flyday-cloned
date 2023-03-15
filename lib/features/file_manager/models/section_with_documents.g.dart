// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_with_documents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SectionWithDocuments _$$_SectionWithDocumentsFromJson(
        Map<String, dynamic> json) =>
    _$_SectionWithDocuments(
      section: Section.fromJson(json['section'] as Map<String, dynamic>),
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) => Document.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_SectionWithDocumentsToJson(
        _$_SectionWithDocuments instance) =>
    <String, dynamic>{
      'section': instance.section,
      'documents': instance.documents,
    };
