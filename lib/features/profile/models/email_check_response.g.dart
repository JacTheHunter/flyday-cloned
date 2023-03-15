// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_check_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmailCheckResponse _$$_EmailCheckResponseFromJson(
        Map<String, dynamic> json) =>
    _$_EmailCheckResponse(
      email: json['email'] as String,
      isAvailabe: json['can_use'] as bool,
    );

Map<String, dynamic> _$$_EmailCheckResponseToJson(
        _$_EmailCheckResponse instance) =>
    <String, dynamic>{
      'email': instance.email,
      'can_use': instance.isAvailabe,
    };
