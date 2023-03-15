// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'support_chat_messages_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SupportChatMessagesEvent {
  bool? get more => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupportChatMessagesEventCopyWith<SupportChatMessagesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportChatMessagesEventCopyWith<$Res> {
  factory $SupportChatMessagesEventCopyWith(SupportChatMessagesEvent value,
          $Res Function(SupportChatMessagesEvent) then) =
      _$SupportChatMessagesEventCopyWithImpl<$Res>;
  $Res call({bool? more});
}

/// @nodoc
class _$SupportChatMessagesEventCopyWithImpl<$Res>
    implements $SupportChatMessagesEventCopyWith<$Res> {
  _$SupportChatMessagesEventCopyWithImpl(this._value, this._then);

  final SupportChatMessagesEvent _value;
  // ignore: unused_field
  final $Res Function(SupportChatMessagesEvent) _then;

  @override
  $Res call({
    Object? more = freezed,
  }) {
    return _then(_value.copyWith(
      more: more == freezed
          ? _value.more
          : more // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res>
    implements $SupportChatMessagesEventCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
  @override
  $Res call({bool? more});
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res>
    extends _$SupportChatMessagesEventCopyWithImpl<$Res>
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
    return 'SupportChatMessagesEvent.fetch(more: $more)';
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
  }) {
    return fetch(more);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
  }) {
    return fetch?.call(more);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
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
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements SupportChatMessagesEvent {
  const factory _Fetch([final bool? more]) = _$_Fetch;

  @override
  bool? get more;
  @override
  @JsonKey(ignore: true)
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SupportChatMessagesState {
  StateStatus get status => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupportChatMessagesStateCopyWith<SupportChatMessagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportChatMessagesStateCopyWith<$Res> {
  factory $SupportChatMessagesStateCopyWith(SupportChatMessagesState value,
          $Res Function(SupportChatMessagesState) then) =
      _$SupportChatMessagesStateCopyWithImpl<$Res>;
  $Res call({StateStatus status, List<Message> messages});

  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$SupportChatMessagesStateCopyWithImpl<$Res>
    implements $SupportChatMessagesStateCopyWith<$Res> {
  _$SupportChatMessagesStateCopyWithImpl(this._value, this._then);

  final SupportChatMessagesState _value;
  // ignore: unused_field
  final $Res Function(SupportChatMessagesState) _then;

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
abstract class _$$_SupportChatMessagesStateCopyWith<$Res>
    implements $SupportChatMessagesStateCopyWith<$Res> {
  factory _$$_SupportChatMessagesStateCopyWith(
          _$_SupportChatMessagesState value,
          $Res Function(_$_SupportChatMessagesState) then) =
      __$$_SupportChatMessagesStateCopyWithImpl<$Res>;
  @override
  $Res call({StateStatus status, List<Message> messages});

  @override
  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_SupportChatMessagesStateCopyWithImpl<$Res>
    extends _$SupportChatMessagesStateCopyWithImpl<$Res>
    implements _$$_SupportChatMessagesStateCopyWith<$Res> {
  __$$_SupportChatMessagesStateCopyWithImpl(_$_SupportChatMessagesState _value,
      $Res Function(_$_SupportChatMessagesState) _then)
      : super(_value, (v) => _then(v as _$_SupportChatMessagesState));

  @override
  _$_SupportChatMessagesState get _value =>
      super._value as _$_SupportChatMessagesState;

  @override
  $Res call({
    Object? status = freezed,
    Object? messages = freezed,
  }) {
    return _then(_$_SupportChatMessagesState(
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

class _$_SupportChatMessagesState implements _SupportChatMessagesState {
  const _$_SupportChatMessagesState(
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
    return 'SupportChatMessagesState(status: $status, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupportChatMessagesState &&
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
  _$$_SupportChatMessagesStateCopyWith<_$_SupportChatMessagesState>
      get copyWith => __$$_SupportChatMessagesStateCopyWithImpl<
          _$_SupportChatMessagesState>(this, _$identity);
}

abstract class _SupportChatMessagesState implements SupportChatMessagesState {
  const factory _SupportChatMessagesState(
      {final StateStatus status,
      final List<Message> messages}) = _$_SupportChatMessagesState;

  @override
  StateStatus get status;
  @override
  List<Message> get messages;
  @override
  @JsonKey(ignore: true)
  _$$_SupportChatMessagesStateCopyWith<_$_SupportChatMessagesState>
      get copyWith => throw _privateConstructorUsedError;
}
