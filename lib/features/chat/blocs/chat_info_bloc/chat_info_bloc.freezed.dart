// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getChatInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getChatInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getChatInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChatInfo value) getChatInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetChatInfo value)? getChatInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChatInfo value)? getChatInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatInfoEventCopyWith<$Res> {
  factory $ChatInfoEventCopyWith(
          ChatInfoEvent value, $Res Function(ChatInfoEvent) then) =
      _$ChatInfoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatInfoEventCopyWithImpl<$Res>
    implements $ChatInfoEventCopyWith<$Res> {
  _$ChatInfoEventCopyWithImpl(this._value, this._then);

  final ChatInfoEvent _value;
  // ignore: unused_field
  final $Res Function(ChatInfoEvent) _then;
}

/// @nodoc
abstract class _$$_GetChatInfoCopyWith<$Res> {
  factory _$$_GetChatInfoCopyWith(
          _$_GetChatInfo value, $Res Function(_$_GetChatInfo) then) =
      __$$_GetChatInfoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetChatInfoCopyWithImpl<$Res>
    extends _$ChatInfoEventCopyWithImpl<$Res>
    implements _$$_GetChatInfoCopyWith<$Res> {
  __$$_GetChatInfoCopyWithImpl(
      _$_GetChatInfo _value, $Res Function(_$_GetChatInfo) _then)
      : super(_value, (v) => _then(v as _$_GetChatInfo));

  @override
  _$_GetChatInfo get _value => super._value as _$_GetChatInfo;
}

/// @nodoc

class _$_GetChatInfo implements _GetChatInfo {
  const _$_GetChatInfo();

  @override
  String toString() {
    return 'ChatInfoEvent.getChatInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetChatInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getChatInfo,
  }) {
    return getChatInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getChatInfo,
  }) {
    return getChatInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getChatInfo,
    required TResult orElse(),
  }) {
    if (getChatInfo != null) {
      return getChatInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChatInfo value) getChatInfo,
  }) {
    return getChatInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetChatInfo value)? getChatInfo,
  }) {
    return getChatInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChatInfo value)? getChatInfo,
    required TResult orElse(),
  }) {
    if (getChatInfo != null) {
      return getChatInfo(this);
    }
    return orElse();
  }
}

abstract class _GetChatInfo implements ChatInfoEvent {
  const factory _GetChatInfo() = _$_GetChatInfo;
}

/// @nodoc
mixin _$ChatInfoState {
  StateStatus get status => throw _privateConstructorUsedError;
  ChatInfo? get selectedChat => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatInfoStateCopyWith<ChatInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatInfoStateCopyWith<$Res> {
  factory $ChatInfoStateCopyWith(
          ChatInfoState value, $Res Function(ChatInfoState) then) =
      _$ChatInfoStateCopyWithImpl<$Res>;
  $Res call({StateStatus status, ChatInfo? selectedChat});

  $StateStatusCopyWith<$Res> get status;
  $ChatInfoCopyWith<$Res>? get selectedChat;
}

/// @nodoc
class _$ChatInfoStateCopyWithImpl<$Res>
    implements $ChatInfoStateCopyWith<$Res> {
  _$ChatInfoStateCopyWithImpl(this._value, this._then);

  final ChatInfoState _value;
  // ignore: unused_field
  final $Res Function(ChatInfoState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? selectedChat = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      selectedChat: selectedChat == freezed
          ? _value.selectedChat
          : selectedChat // ignore: cast_nullable_to_non_nullable
              as ChatInfo?,
    ));
  }

  @override
  $StateStatusCopyWith<$Res> get status {
    return $StateStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }

  @override
  $ChatInfoCopyWith<$Res>? get selectedChat {
    if (_value.selectedChat == null) {
      return null;
    }

    return $ChatInfoCopyWith<$Res>(_value.selectedChat!, (value) {
      return _then(_value.copyWith(selectedChat: value));
    });
  }
}

/// @nodoc
abstract class _$$_ChatInfoStateCopyWith<$Res>
    implements $ChatInfoStateCopyWith<$Res> {
  factory _$$_ChatInfoStateCopyWith(
          _$_ChatInfoState value, $Res Function(_$_ChatInfoState) then) =
      __$$_ChatInfoStateCopyWithImpl<$Res>;
  @override
  $Res call({StateStatus status, ChatInfo? selectedChat});

  @override
  $StateStatusCopyWith<$Res> get status;
  @override
  $ChatInfoCopyWith<$Res>? get selectedChat;
}

/// @nodoc
class __$$_ChatInfoStateCopyWithImpl<$Res>
    extends _$ChatInfoStateCopyWithImpl<$Res>
    implements _$$_ChatInfoStateCopyWith<$Res> {
  __$$_ChatInfoStateCopyWithImpl(
      _$_ChatInfoState _value, $Res Function(_$_ChatInfoState) _then)
      : super(_value, (v) => _then(v as _$_ChatInfoState));

  @override
  _$_ChatInfoState get _value => super._value as _$_ChatInfoState;

  @override
  $Res call({
    Object? status = freezed,
    Object? selectedChat = freezed,
  }) {
    return _then(_$_ChatInfoState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      selectedChat: selectedChat == freezed
          ? _value.selectedChat
          : selectedChat // ignore: cast_nullable_to_non_nullable
              as ChatInfo?,
    ));
  }
}

/// @nodoc

class _$_ChatInfoState implements _ChatInfoState {
  const _$_ChatInfoState(
      {this.status = const StateStatus(), this.selectedChat});

  @override
  @JsonKey()
  final StateStatus status;
  @override
  final ChatInfo? selectedChat;

  @override
  String toString() {
    return 'ChatInfoState(status: $status, selectedChat: $selectedChat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatInfoState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.selectedChat, selectedChat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(selectedChat));

  @JsonKey(ignore: true)
  @override
  _$$_ChatInfoStateCopyWith<_$_ChatInfoState> get copyWith =>
      __$$_ChatInfoStateCopyWithImpl<_$_ChatInfoState>(this, _$identity);
}

abstract class _ChatInfoState implements ChatInfoState {
  const factory _ChatInfoState(
      {final StateStatus status,
      final ChatInfo? selectedChat}) = _$_ChatInfoState;

  @override
  StateStatus get status;
  @override
  ChatInfo? get selectedChat;
  @override
  @JsonKey(ignore: true)
  _$$_ChatInfoStateCopyWith<_$_ChatInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}
