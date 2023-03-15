// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_messages_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatMessagesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetch,
    required TResult Function(Message message) addMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(Message message)? addMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(Message message)? addMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddMessage value) addMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddMessage value)? addMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddMessage value)? addMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessagesEventCopyWith<$Res> {
  factory $ChatMessagesEventCopyWith(
          ChatMessagesEvent value, $Res Function(ChatMessagesEvent) then) =
      _$ChatMessagesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatMessagesEventCopyWithImpl<$Res>
    implements $ChatMessagesEventCopyWith<$Res> {
  _$ChatMessagesEventCopyWithImpl(this._value, this._then);

  final ChatMessagesEvent _value;
  // ignore: unused_field
  final $Res Function(ChatMessagesEvent) _then;
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
  $Res call({bool? more});
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res> extends _$ChatMessagesEventCopyWithImpl<$Res>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, (v) => _then(v as _$_Fetch));

  @override
  _$_Fetch get _value => super._value as _$_Fetch;

  @override
  $Res call({
    Object? more = freezed,
  }) {
    return _then(_$_Fetch(
      more == freezed
          ? _value.more
          : more // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch([this.more]);

  @override
  final bool? more;

  @override
  String toString() {
    return 'ChatMessagesEvent.fetch(more: $more)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fetch &&
            const DeepCollectionEquality().equals(other.more, more));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(more));

  @JsonKey(ignore: true)
  @override
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      __$$_FetchCopyWithImpl<_$_Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetch,
    required TResult Function(Message message) addMessage,
  }) {
    return fetch(more);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(Message message)? addMessage,
  }) {
    return fetch?.call(more);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(Message message)? addMessage,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(more);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddMessage value) addMessage,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddMessage value)? addMessage,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddMessage value)? addMessage,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements ChatMessagesEvent {
  const factory _Fetch([final bool? more]) = _$_Fetch;

  bool? get more;
  @JsonKey(ignore: true)
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddMessageCopyWith<$Res> {
  factory _$$_AddMessageCopyWith(
          _$_AddMessage value, $Res Function(_$_AddMessage) then) =
      __$$_AddMessageCopyWithImpl<$Res>;
  $Res call({Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$_AddMessageCopyWithImpl<$Res>
    extends _$ChatMessagesEventCopyWithImpl<$Res>
    implements _$$_AddMessageCopyWith<$Res> {
  __$$_AddMessageCopyWithImpl(
      _$_AddMessage _value, $Res Function(_$_AddMessage) _then)
      : super(_value, (v) => _then(v as _$_AddMessage));

  @override
  _$_AddMessage get _value => super._value as _$_AddMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_AddMessage(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }

  @override
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$_AddMessage implements _AddMessage {
  const _$_AddMessage(this.message);

  @override
  final Message message;

  @override
  String toString() {
    return 'ChatMessagesEvent.addMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddMessage &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_AddMessageCopyWith<_$_AddMessage> get copyWith =>
      __$$_AddMessageCopyWithImpl<_$_AddMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetch,
    required TResult Function(Message message) addMessage,
  }) {
    return addMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(Message message)? addMessage,
  }) {
    return addMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(Message message)? addMessage,
    required TResult orElse(),
  }) {
    if (addMessage != null) {
      return addMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddMessage value) addMessage,
  }) {
    return addMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddMessage value)? addMessage,
  }) {
    return addMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddMessage value)? addMessage,
    required TResult orElse(),
  }) {
    if (addMessage != null) {
      return addMessage(this);
    }
    return orElse();
  }
}

abstract class _AddMessage implements ChatMessagesEvent {
  const factory _AddMessage(final Message message) = _$_AddMessage;

  Message get message;
  @JsonKey(ignore: true)
  _$$_AddMessageCopyWith<_$_AddMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatMessagesState {
  StateStatus get status => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatMessagesStateCopyWith<ChatMessagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessagesStateCopyWith<$Res> {
  factory $ChatMessagesStateCopyWith(
          ChatMessagesState value, $Res Function(ChatMessagesState) then) =
      _$ChatMessagesStateCopyWithImpl<$Res>;
  $Res call({StateStatus status, List<Message> messages});

  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$ChatMessagesStateCopyWithImpl<$Res>
    implements $ChatMessagesStateCopyWith<$Res> {
  _$ChatMessagesStateCopyWithImpl(this._value, this._then);

  final ChatMessagesState _value;
  // ignore: unused_field
  final $Res Function(ChatMessagesState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }

  @override
  $StateStatusCopyWith<$Res> get status {
    return $StateStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$$_ChatMessagesStateCopyWith<$Res>
    implements $ChatMessagesStateCopyWith<$Res> {
  factory _$$_ChatMessagesStateCopyWith(_$_ChatMessagesState value,
          $Res Function(_$_ChatMessagesState) then) =
      __$$_ChatMessagesStateCopyWithImpl<$Res>;
  @override
  $Res call({StateStatus status, List<Message> messages});

  @override
  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_ChatMessagesStateCopyWithImpl<$Res>
    extends _$ChatMessagesStateCopyWithImpl<$Res>
    implements _$$_ChatMessagesStateCopyWith<$Res> {
  __$$_ChatMessagesStateCopyWithImpl(
      _$_ChatMessagesState _value, $Res Function(_$_ChatMessagesState) _then)
      : super(_value, (v) => _then(v as _$_ChatMessagesState));

  @override
  _$_ChatMessagesState get _value => super._value as _$_ChatMessagesState;

  @override
  $Res call({
    Object? status = freezed,
    Object? messages = freezed,
  }) {
    return _then(_$_ChatMessagesState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      messages: messages == freezed
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$_ChatMessagesState implements _ChatMessagesState {
  const _$_ChatMessagesState(
      {this.status = const StateStatus(),
      final List<Message> messages = const []})
      : _messages = messages;

  @override
  @JsonKey()
  final StateStatus status;
  final List<Message> _messages;
  @override
  @JsonKey()
  List<Message> get messages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatMessagesState(status: $status, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatMessagesState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  _$$_ChatMessagesStateCopyWith<_$_ChatMessagesState> get copyWith =>
      __$$_ChatMessagesStateCopyWithImpl<_$_ChatMessagesState>(
          this, _$identity);
}

abstract class _ChatMessagesState implements ChatMessagesState {
  const factory _ChatMessagesState(
      {final StateStatus status,
      final List<Message> messages}) = _$_ChatMessagesState;

  @override
  StateStatus get status;
  @override
  List<Message> get messages;
  @override
  @JsonKey(ignore: true)
  _$$_ChatMessagesStateCopyWith<_$_ChatMessagesState> get copyWith =>
      throw _privateConstructorUsedError;
}
