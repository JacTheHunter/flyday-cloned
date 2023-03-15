// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatInfo _$ChatInfoFromJson(Map<String, dynamic> json) {
  return _ChatInfo.fromJson(json);
}

/// @nodoc
mixin _$ChatInfo {
  @JsonKey(name: '_id')
  int get id => throw _privateConstructorUsedError;
  MessageAuthor get broker => throw _privateConstructorUsedError;
  MessageAuthor get customer => throw _privateConstructorUsedError;
  @JsonKey(name: 'add', defaultValue: 0)
  int get addId => throw _privateConstructorUsedError;
  @JsonKey(name: 'offer', defaultValue: 0)
  int get offerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_write', defaultValue: false)
  bool get canWrite => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_done', defaultValue: false)
  bool get isDone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatInfoCopyWith<ChatInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatInfoCopyWith<$Res> {
  factory $ChatInfoCopyWith(ChatInfo value, $Res Function(ChatInfo) then) =
      _$ChatInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') int id,
      MessageAuthor broker,
      MessageAuthor customer,
      @JsonKey(name: 'add', defaultValue: 0) int addId,
      @JsonKey(name: 'offer', defaultValue: 0) int offerId,
      @JsonKey(name: 'can_write', defaultValue: false) bool canWrite,
      @JsonKey(name: 'is_done', defaultValue: false) bool isDone});

  $MessageAuthorCopyWith<$Res> get broker;
  $MessageAuthorCopyWith<$Res> get customer;
}

/// @nodoc
class _$ChatInfoCopyWithImpl<$Res> implements $ChatInfoCopyWith<$Res> {
  _$ChatInfoCopyWithImpl(this._value, this._then);

  final ChatInfo _value;
  // ignore: unused_field
  final $Res Function(ChatInfo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? broker = freezed,
    Object? customer = freezed,
    Object? addId = freezed,
    Object? offerId = freezed,
    Object? canWrite = freezed,
    Object? isDone = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      broker: broker == freezed
          ? _value.broker
          : broker // ignore: cast_nullable_to_non_nullable
              as MessageAuthor,
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as MessageAuthor,
      addId: addId == freezed
          ? _value.addId
          : addId // ignore: cast_nullable_to_non_nullable
              as int,
      offerId: offerId == freezed
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as int,
      canWrite: canWrite == freezed
          ? _value.canWrite
          : canWrite // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $MessageAuthorCopyWith<$Res> get broker {
    return $MessageAuthorCopyWith<$Res>(_value.broker, (value) {
      return _then(_value.copyWith(broker: value));
    });
  }

  @override
  $MessageAuthorCopyWith<$Res> get customer {
    return $MessageAuthorCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value));
    });
  }
}

/// @nodoc
abstract class _$$_ChatInfoCopyWith<$Res> implements $ChatInfoCopyWith<$Res> {
  factory _$$_ChatInfoCopyWith(
          _$_ChatInfo value, $Res Function(_$_ChatInfo) then) =
      __$$_ChatInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') int id,
      MessageAuthor broker,
      MessageAuthor customer,
      @JsonKey(name: 'add', defaultValue: 0) int addId,
      @JsonKey(name: 'offer', defaultValue: 0) int offerId,
      @JsonKey(name: 'can_write', defaultValue: false) bool canWrite,
      @JsonKey(name: 'is_done', defaultValue: false) bool isDone});

  @override
  $MessageAuthorCopyWith<$Res> get broker;
  @override
  $MessageAuthorCopyWith<$Res> get customer;
}

/// @nodoc
class __$$_ChatInfoCopyWithImpl<$Res> extends _$ChatInfoCopyWithImpl<$Res>
    implements _$$_ChatInfoCopyWith<$Res> {
  __$$_ChatInfoCopyWithImpl(
      _$_ChatInfo _value, $Res Function(_$_ChatInfo) _then)
      : super(_value, (v) => _then(v as _$_ChatInfo));

  @override
  _$_ChatInfo get _value => super._value as _$_ChatInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? broker = freezed,
    Object? customer = freezed,
    Object? addId = freezed,
    Object? offerId = freezed,
    Object? canWrite = freezed,
    Object? isDone = freezed,
  }) {
    return _then(_$_ChatInfo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      broker: broker == freezed
          ? _value.broker
          : broker // ignore: cast_nullable_to_non_nullable
              as MessageAuthor,
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as MessageAuthor,
      addId: addId == freezed
          ? _value.addId
          : addId // ignore: cast_nullable_to_non_nullable
              as int,
      offerId: offerId == freezed
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as int,
      canWrite: canWrite == freezed
          ? _value.canWrite
          : canWrite // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatInfo implements _ChatInfo {
  const _$_ChatInfo(
      {@JsonKey(name: '_id') required this.id,
      required this.broker,
      required this.customer,
      @JsonKey(name: 'add', defaultValue: 0) required this.addId,
      @JsonKey(name: 'offer', defaultValue: 0) required this.offerId,
      @JsonKey(name: 'can_write', defaultValue: false) required this.canWrite,
      @JsonKey(name: 'is_done', defaultValue: false) required this.isDone});

  factory _$_ChatInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ChatInfoFromJson(json);

  @override
  @JsonKey(name: '_id')
  final int id;
  @override
  final MessageAuthor broker;
  @override
  final MessageAuthor customer;
  @override
  @JsonKey(name: 'add', defaultValue: 0)
  final int addId;
  @override
  @JsonKey(name: 'offer', defaultValue: 0)
  final int offerId;
  @override
  @JsonKey(name: 'can_write', defaultValue: false)
  final bool canWrite;
  @override
  @JsonKey(name: 'is_done', defaultValue: false)
  final bool isDone;

  @override
  String toString() {
    return 'ChatInfo(id: $id, broker: $broker, customer: $customer, addId: $addId, offerId: $offerId, canWrite: $canWrite, isDone: $isDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatInfo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.broker, broker) &&
            const DeepCollectionEquality().equals(other.customer, customer) &&
            const DeepCollectionEquality().equals(other.addId, addId) &&
            const DeepCollectionEquality().equals(other.offerId, offerId) &&
            const DeepCollectionEquality().equals(other.canWrite, canWrite) &&
            const DeepCollectionEquality().equals(other.isDone, isDone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(broker),
      const DeepCollectionEquality().hash(customer),
      const DeepCollectionEquality().hash(addId),
      const DeepCollectionEquality().hash(offerId),
      const DeepCollectionEquality().hash(canWrite),
      const DeepCollectionEquality().hash(isDone));

  @JsonKey(ignore: true)
  @override
  _$$_ChatInfoCopyWith<_$_ChatInfo> get copyWith =>
      __$$_ChatInfoCopyWithImpl<_$_ChatInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatInfoToJson(
      this,
    );
  }
}

abstract class _ChatInfo implements ChatInfo {
  const factory _ChatInfo(
      {@JsonKey(name: '_id')
          required final int id,
      required final MessageAuthor broker,
      required final MessageAuthor customer,
      @JsonKey(name: 'add', defaultValue: 0)
          required final int addId,
      @JsonKey(name: 'offer', defaultValue: 0)
          required final int offerId,
      @JsonKey(name: 'can_write', defaultValue: false)
          required final bool canWrite,
      @JsonKey(name: 'is_done', defaultValue: false)
          required final bool isDone}) = _$_ChatInfo;

  factory _ChatInfo.fromJson(Map<String, dynamic> json) = _$_ChatInfo.fromJson;

  @override
  @JsonKey(name: '_id')
  int get id;
  @override
  MessageAuthor get broker;
  @override
  MessageAuthor get customer;
  @override
  @JsonKey(name: 'add', defaultValue: 0)
  int get addId;
  @override
  @JsonKey(name: 'offer', defaultValue: 0)
  int get offerId;
  @override
  @JsonKey(name: 'can_write', defaultValue: false)
  bool get canWrite;
  @override
  @JsonKey(name: 'is_done', defaultValue: false)
  bool get isDone;
  @override
  @JsonKey(ignore: true)
  _$$_ChatInfoCopyWith<_$_ChatInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
