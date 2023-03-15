// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Notification _$NotificationFromJson(Map<String, dynamic> json) {
  return _Notification.fromJson(json);
}

/// @nodoc
mixin _$Notification {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'notification_type',
      unknownEnumValue: NotificationType.custom,
      defaultValue: NotificationType.custom)
  NotificationType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'object_id', defaultValue: 0)
  int get objectId => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_read', defaultValue: false)
  bool get isRead => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAtStr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationCopyWith<Notification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          Notification value, $Res Function(Notification) then) =
      _$NotificationCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String description,
      @JsonKey(name: 'notification_type', unknownEnumValue: NotificationType.custom, defaultValue: NotificationType.custom)
          NotificationType type,
      @JsonKey(name: 'object_id', defaultValue: 0)
          int objectId,
      String? image,
      @JsonKey(name: 'is_read', defaultValue: false)
          bool isRead,
      @JsonKey(name: 'created_at')
          String createdAtStr});
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res> implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  final Notification _value;
  // ignore: unused_field
  final $Res Function(Notification) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? objectId = freezed,
    Object? image = freezed,
    Object? isRead = freezed,
    Object? createdAtStr = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      objectId: objectId == freezed
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isRead: isRead == freezed
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAtStr: createdAtStr == freezed
          ? _value.createdAtStr
          : createdAtStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NotificationCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory _$$_NotificationCopyWith(
          _$_Notification value, $Res Function(_$_Notification) then) =
      __$$_NotificationCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String description,
      @JsonKey(name: 'notification_type', unknownEnumValue: NotificationType.custom, defaultValue: NotificationType.custom)
          NotificationType type,
      @JsonKey(name: 'object_id', defaultValue: 0)
          int objectId,
      String? image,
      @JsonKey(name: 'is_read', defaultValue: false)
          bool isRead,
      @JsonKey(name: 'created_at')
          String createdAtStr});
}

/// @nodoc
class __$$_NotificationCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res>
    implements _$$_NotificationCopyWith<$Res> {
  __$$_NotificationCopyWithImpl(
      _$_Notification _value, $Res Function(_$_Notification) _then)
      : super(_value, (v) => _then(v as _$_Notification));

  @override
  _$_Notification get _value => super._value as _$_Notification;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? objectId = freezed,
    Object? image = freezed,
    Object? isRead = freezed,
    Object? createdAtStr = freezed,
  }) {
    return _then(_$_Notification(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      objectId: objectId == freezed
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isRead: isRead == freezed
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAtStr: createdAtStr == freezed
          ? _value.createdAtStr
          : createdAtStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Notification extends _Notification {
  const _$_Notification(
      {required this.id,
      required this.title,
      required this.description,
      @JsonKey(name: 'notification_type', unknownEnumValue: NotificationType.custom, defaultValue: NotificationType.custom)
          required this.type,
      @JsonKey(name: 'object_id', defaultValue: 0)
          required this.objectId,
      this.image,
      @JsonKey(name: 'is_read', defaultValue: false)
          required this.isRead,
      @JsonKey(name: 'created_at')
          required this.createdAtStr})
      : super._();

  factory _$_Notification.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(
      name: 'notification_type',
      unknownEnumValue: NotificationType.custom,
      defaultValue: NotificationType.custom)
  final NotificationType type;
  @override
  @JsonKey(name: 'object_id', defaultValue: 0)
  final int objectId;
  @override
  final String? image;
  @override
  @JsonKey(name: 'is_read', defaultValue: false)
  final bool isRead;
  @override
  @JsonKey(name: 'created_at')
  final String createdAtStr;

  @override
  String toString() {
    return 'Notification(id: $id, title: $title, description: $description, type: $type, objectId: $objectId, image: $image, isRead: $isRead, createdAtStr: $createdAtStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Notification &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.objectId, objectId) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.isRead, isRead) &&
            const DeepCollectionEquality()
                .equals(other.createdAtStr, createdAtStr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(objectId),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(isRead),
      const DeepCollectionEquality().hash(createdAtStr));

  @JsonKey(ignore: true)
  @override
  _$$_NotificationCopyWith<_$_Notification> get copyWith =>
      __$$_NotificationCopyWithImpl<_$_Notification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationToJson(
      this,
    );
  }
}

abstract class _Notification extends Notification {
  const factory _Notification(
      {required final int id,
      required final String title,
      required final String description,
      @JsonKey(name: 'notification_type', unknownEnumValue: NotificationType.custom, defaultValue: NotificationType.custom)
          required final NotificationType type,
      @JsonKey(name: 'object_id', defaultValue: 0)
          required final int objectId,
      final String? image,
      @JsonKey(name: 'is_read', defaultValue: false)
          required final bool isRead,
      @JsonKey(name: 'created_at')
          required final String createdAtStr}) = _$_Notification;
  const _Notification._() : super._();

  factory _Notification.fromJson(Map<String, dynamic> json) =
      _$_Notification.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(
      name: 'notification_type',
      unknownEnumValue: NotificationType.custom,
      defaultValue: NotificationType.custom)
  NotificationType get type;
  @override
  @JsonKey(name: 'object_id', defaultValue: 0)
  int get objectId;
  @override
  String? get image;
  @override
  @JsonKey(name: 'is_read', defaultValue: false)
  bool get isRead;
  @override
  @JsonKey(name: 'created_at')
  String get createdAtStr;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationCopyWith<_$_Notification> get copyWith =>
      throw _privateConstructorUsedError;
}
