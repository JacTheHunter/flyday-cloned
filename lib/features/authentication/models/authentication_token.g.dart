// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthenticationToken _$$_AuthenticationTokenFromJson(
        Map<String, dynamic> json) =>
    _$_AuthenticationToken(
      access: json['access'] as String,
      refresh: json['refresh'] as String,
    );

Map<String, dynamic> _$$_AuthenticationTokenToJson(
        _$_AuthenticationToken instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
    };
