// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ad.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ad _$AdFromJson(Map<String, dynamic> json) {
  return _Ad.fromJson(json);
}

/// @nodoc
mixin _$Ad {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'ad_type')
  AdType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', defaultValue: AdStatus.all)
  AdStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'route_details', defaultValue: [])
  List<RouteDetail> get routeDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_id', defaultValue: 0)
  int get chatId => throw _privateConstructorUsedError;
  @JsonKey(name: 'unread_message', defaultValue: false)
  bool get hasUnreadMessages => throw _privateConstructorUsedError;
  @JsonKey(name: 'count_brokers', defaultValue: 0)
  int get brokersWhoResponsed => throw _privateConstructorUsedError;
  @JsonKey(name: 'map_image', defaultValue: '')
  String get mapImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdCopyWith<Ad> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdCopyWith<$Res> {
  factory $AdCopyWith(Ad value, $Res Function(Ad) then) =
      _$AdCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'ad_type')
          AdType type,
      @JsonKey(name: 'status', defaultValue: AdStatus.all)
          AdStatus status,
      @JsonKey(name: 'route_details', defaultValue: [])
          List<RouteDetail> routeDetails,
      @JsonKey(name: 'chat_id', defaultValue: 0)
          int chatId,
      @JsonKey(name: 'unread_message', defaultValue: false)
          bool hasUnreadMessages,
      @JsonKey(name: 'count_brokers', defaultValue: 0)
          int brokersWhoResponsed,
      @JsonKey(name: 'map_image', defaultValue: '')
          String mapImage});
}

/// @nodoc
class _$AdCopyWithImpl<$Res> implements $AdCopyWith<$Res> {
  _$AdCopyWithImpl(this._value, this._then);

  final Ad _value;
  // ignore: unused_field
  final $Res Function(Ad) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? routeDetails = freezed,
    Object? chatId = freezed,
    Object? hasUnreadMessages = freezed,
    Object? brokersWhoResponsed = freezed,
    Object? mapImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AdType,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AdStatus,
      routeDetails: routeDetails == freezed
          ? _value.routeDetails
          : routeDetails // ignore: cast_nullable_to_non_nullable
              as List<RouteDetail>,
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      hasUnreadMessages: hasUnreadMessages == freezed
          ? _value.hasUnreadMessages
          : hasUnreadMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      brokersWhoResponsed: brokersWhoResponsed == freezed
          ? _value.brokersWhoResponsed
          : brokersWhoResponsed // ignore: cast_nullable_to_non_nullable
              as int,
      mapImage: mapImage == freezed
          ? _value.mapImage
          : mapImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AdCopyWith<$Res> implements $AdCopyWith<$Res> {
  factory _$$_AdCopyWith(_$_Ad value, $Res Function(_$_Ad) then) =
      __$$_AdCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'ad_type')
          AdType type,
      @JsonKey(name: 'status', defaultValue: AdStatus.all)
          AdStatus status,
      @JsonKey(name: 'route_details', defaultValue: [])
          List<RouteDetail> routeDetails,
      @JsonKey(name: 'chat_id', defaultValue: 0)
          int chatId,
      @JsonKey(name: 'unread_message', defaultValue: false)
          bool hasUnreadMessages,
      @JsonKey(name: 'count_brokers', defaultValue: 0)
          int brokersWhoResponsed,
      @JsonKey(name: 'map_image', defaultValue: '')
          String mapImage});
}

/// @nodoc
class __$$_AdCopyWithImpl<$Res> extends _$AdCopyWithImpl<$Res>
    implements _$$_AdCopyWith<$Res> {
  __$$_AdCopyWithImpl(_$_Ad _value, $Res Function(_$_Ad) _then)
      : super(_value, (v) => _then(v as _$_Ad));

  @override
  _$_Ad get _value => super._value as _$_Ad;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? routeDetails = freezed,
    Object? chatId = freezed,
    Object? hasUnreadMessages = freezed,
    Object? brokersWhoResponsed = freezed,
    Object? mapImage = freezed,
  }) {
    return _then(_$_Ad(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AdType,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AdStatus,
      routeDetails: routeDetails == freezed
          ? _value._routeDetails
          : routeDetails // ignore: cast_nullable_to_non_nullable
              as List<RouteDetail>,
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      hasUnreadMessages: hasUnreadMessages == freezed
          ? _value.hasUnreadMessages
          : hasUnreadMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      brokersWhoResponsed: brokersWhoResponsed == freezed
          ? _value.brokersWhoResponsed
          : brokersWhoResponsed // ignore: cast_nullable_to_non_nullable
              as int,
      mapImage: mapImage == freezed
          ? _value.mapImage
          : mapImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ad implements _Ad {
  const _$_Ad(
      {required this.id,
      @JsonKey(name: 'ad_type')
          required this.type,
      @JsonKey(name: 'status', defaultValue: AdStatus.all)
          required this.status,
      @JsonKey(name: 'route_details', defaultValue: [])
          required final List<RouteDetail> routeDetails,
      @JsonKey(name: 'chat_id', defaultValue: 0)
          required this.chatId,
      @JsonKey(name: 'unread_message', defaultValue: false)
          required this.hasUnreadMessages,
      @JsonKey(name: 'count_brokers', defaultValue: 0)
          required this.brokersWhoResponsed,
      @JsonKey(name: 'map_image', defaultValue: '')
          required this.mapImage})
      : _routeDetails = routeDetails;

  factory _$_Ad.fromJson(Map<String, dynamic> json) => _$$_AdFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'ad_type')
  final AdType type;
  @override
  @JsonKey(name: 'status', defaultValue: AdStatus.all)
  final AdStatus status;
  final List<RouteDetail> _routeDetails;
  @override
  @JsonKey(name: 'route_details', defaultValue: [])
  List<RouteDetail> get routeDetails {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routeDetails);
  }

  @override
  @JsonKey(name: 'chat_id', defaultValue: 0)
  final int chatId;
  @override
  @JsonKey(name: 'unread_message', defaultValue: false)
  final bool hasUnreadMessages;
  @override
  @JsonKey(name: 'count_brokers', defaultValue: 0)
  final int brokersWhoResponsed;
  @override
  @JsonKey(name: 'map_image', defaultValue: '')
  final String mapImage;

  @override
  String toString() {
    return 'Ad(id: $id, type: $type, status: $status, routeDetails: $routeDetails, chatId: $chatId, hasUnreadMessages: $hasUnreadMessages, brokersWhoResponsed: $brokersWhoResponsed, mapImage: $mapImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ad &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other._routeDetails, _routeDetails) &&
            const DeepCollectionEquality().equals(other.chatId, chatId) &&
            const DeepCollectionEquality()
                .equals(other.hasUnreadMessages, hasUnreadMessages) &&
            const DeepCollectionEquality()
                .equals(other.brokersWhoResponsed, brokersWhoResponsed) &&
            const DeepCollectionEquality().equals(other.mapImage, mapImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_routeDetails),
      const DeepCollectionEquality().hash(chatId),
      const DeepCollectionEquality().hash(hasUnreadMessages),
      const DeepCollectionEquality().hash(brokersWhoResponsed),
      const DeepCollectionEquality().hash(mapImage));

  @JsonKey(ignore: true)
  @override
  _$$_AdCopyWith<_$_Ad> get copyWith =>
      __$$_AdCopyWithImpl<_$_Ad>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdToJson(
      this,
    );
  }
}

abstract class _Ad implements Ad {
  const factory _Ad(
      {required final int id,
      @JsonKey(name: 'ad_type')
          required final AdType type,
      @JsonKey(name: 'status', defaultValue: AdStatus.all)
          required final AdStatus status,
      @JsonKey(name: 'route_details', defaultValue: [])
          required final List<RouteDetail> routeDetails,
      @JsonKey(name: 'chat_id', defaultValue: 0)
          required final int chatId,
      @JsonKey(name: 'unread_message', defaultValue: false)
          required final bool hasUnreadMessages,
      @JsonKey(name: 'count_brokers', defaultValue: 0)
          required final int brokersWhoResponsed,
      @JsonKey(name: 'map_image', defaultValue: '')
          required final String mapImage}) = _$_Ad;

  factory _Ad.fromJson(Map<String, dynamic> json) = _$_Ad.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'ad_type')
  AdType get type;
  @override
  @JsonKey(name: 'status', defaultValue: AdStatus.all)
  AdStatus get status;
  @override
  @JsonKey(name: 'route_details', defaultValue: [])
  List<RouteDetail> get routeDetails;
  @override
  @JsonKey(name: 'chat_id', defaultValue: 0)
  int get chatId;
  @override
  @JsonKey(name: 'unread_message', defaultValue: false)
  bool get hasUnreadMessages;
  @override
  @JsonKey(name: 'count_brokers', defaultValue: 0)
  int get brokersWhoResponsed;
  @override
  @JsonKey(name: 'map_image', defaultValue: '')
  String get mapImage;
  @override
  @JsonKey(ignore: true)
  _$$_AdCopyWith<_$_Ad> get copyWith => throw _privateConstructorUsedError;
}
