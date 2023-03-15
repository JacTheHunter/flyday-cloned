// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageAuthor _$$_MessageAuthorFromJson(Map<String, dynamic> json) =>
    _$_MessageAuthor(
      id: json['_id'] as int? ?? 0,
      firstName: json['first_name'] as String? ?? '',
      lastName: json['last_name'] as String? ?? '',
      isCustomer: json['is_customer'] as bool? ?? false,
    );

Map<String, dynamic> _$$_MessageAuthorToJson(_$_MessageAuthor instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'is_customer': instance.isCustomer,
    };
