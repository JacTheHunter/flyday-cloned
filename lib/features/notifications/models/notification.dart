import 'package:freezed_annotation/freezed_annotation.dart';

import 'notification_type.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class Notification with _$Notification {
  const Notification._();
  const factory Notification({
    required int id,
    required String title,
    required String description,
    @JsonKey(name: 'notification_type', unknownEnumValue: NotificationType.custom, defaultValue: NotificationType.custom)
        required NotificationType type,
    @JsonKey(name: 'object_id', defaultValue: 0) required int objectId,
    String? image,
    @JsonKey(name: 'is_read', defaultValue: false) required bool isRead,
    @JsonKey(name: 'created_at') required String createdAtStr,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);

  DateTime get createdAt => (createdAtStr.endsWith('z') || createdAtStr.endsWith('Z'))
      ? DateTime.parse(createdAtStr)
      : DateTime.parse('${createdAtStr}Z');

  DateTime get createdAtLocal => createdAt.toLocal();
}
