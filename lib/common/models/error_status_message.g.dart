// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_status_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorStatusMessage _$$_ErrorStatusMessageFromJson(
        Map<String, dynamic> json) =>
    _$_ErrorStatusMessage(
      text: json['text'] as String?,
      showPopUp: json['showPopUp'] ?? false,
    );

Map<String, dynamic> _$$_ErrorStatusMessageToJson(
        _$_ErrorStatusMessage instance) =>
    <String, dynamic>{
      'text': instance.text,
      'showPopUp': instance.showPopUp,
    };
