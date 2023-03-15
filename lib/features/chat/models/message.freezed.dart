// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  @JsonKey(name: '_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_id')
  int? get authorId => throw _privateConstructorUsedError;
  MessageAuthor? get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'ad_id', defaultValue: 0)
  int get chatId => throw _privateConstructorUsedError;
  @JsonKey(name: 'offer_id', defaultValue: 0)
  int get offerd => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  List<MessageFile> get files => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_message', defaultValue: MessageType.text)
  MessageType get messageType => throw _privateConstructorUsedError;
  @JsonKey(name: 'reply')
  int? get replyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAtStr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id')
          int id,
      @JsonKey(name: 'author_id')
          int? authorId,
      MessageAuthor? author,
      @JsonKey(name: 'ad_id', defaultValue: 0)
          int chatId,
      @JsonKey(name: 'offer_id', defaultValue: 0)
          int offerd,
      String text,
      List<MessageFile> files,
      @JsonKey(name: 'type_message', defaultValue: MessageType.text)
          MessageType messageType,
      @JsonKey(name: 'reply')
          int? replyId,
      @JsonKey(name: 'created_at')
          String createdAtStr});

  $MessageAuthorCopyWith<$Res>? get author;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? authorId = freezed,
    Object? author = freezed,
    Object? chatId = freezed,
    Object? offerd = freezed,
    Object? text = freezed,
    Object? files = freezed,
    Object? messageType = freezed,
    Object? replyId = freezed,
    Object? createdAtStr = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as MessageAuthor?,
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      offerd: offerd == freezed
          ? _value.offerd
          : offerd // ignore: cast_nullable_to_non_nullable
              as int,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      files: files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<MessageFile>,
      messageType: messageType == freezed
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as MessageType,
      replyId: replyId == freezed
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAtStr: createdAtStr == freezed
          ? _value.createdAtStr
          : createdAtStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $MessageAuthorCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $MessageAuthorCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value));
    });
  }
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id')
          int id,
      @JsonKey(name: 'author_id')
          int? authorId,
      MessageAuthor? author,
      @JsonKey(name: 'ad_id', defaultValue: 0)
          int chatId,
      @JsonKey(name: 'offer_id', defaultValue: 0)
          int offerd,
      String text,
      List<MessageFile> files,
      @JsonKey(name: 'type_message', defaultValue: MessageType.text)
          MessageType messageType,
      @JsonKey(name: 'reply')
          int? replyId,
      @JsonKey(name: 'created_at')
          String createdAtStr});

  @override
  $MessageAuthorCopyWith<$Res>? get author;
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, (v) => _then(v as _$_Message));

  @override
  _$_Message get _value => super._value as _$_Message;

  @override
  $Res call({
    Object? id = freezed,
    Object? authorId = freezed,
    Object? author = freezed,
    Object? chatId = freezed,
    Object? offerd = freezed,
    Object? text = freezed,
    Object? files = freezed,
    Object? messageType = freezed,
    Object? replyId = freezed,
    Object? createdAtStr = freezed,
  }) {
    return _then(_$_Message(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as MessageAuthor?,
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      offerd: offerd == freezed
          ? _value.offerd
          : offerd // ignore: cast_nullable_to_non_nullable
              as int,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      files: files == freezed
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<MessageFile>,
      messageType: messageType == freezed
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as MessageType,
      replyId: replyId == freezed
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAtStr: createdAtStr == freezed
          ? _value.createdAtStr
          : createdAtStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Message extends _Message {
  const _$_Message(
      {@JsonKey(name: '_id')
          required this.id,
      @JsonKey(name: 'author_id')
          this.authorId,
      this.author,
      @JsonKey(name: 'ad_id', defaultValue: 0)
          required this.chatId,
      @JsonKey(name: 'offer_id', defaultValue: 0)
          required this.offerd,
      this.text = '',
      final List<MessageFile> files = const [],
      @JsonKey(name: 'type_message', defaultValue: MessageType.text)
          required this.messageType,
      @JsonKey(name: 'reply')
          this.replyId,
      @JsonKey(name: 'created_at')
          required this.createdAtStr})
      : _files = files,
        super._();

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  @override
  @JsonKey(name: '_id')
  final int id;
  @override
  @JsonKey(name: 'author_id')
  final int? authorId;
  @override
  final MessageAuthor? author;
  @override
  @JsonKey(name: 'ad_id', defaultValue: 0)
  final int chatId;
  @override
  @JsonKey(name: 'offer_id', defaultValue: 0)
  final int offerd;
  @override
  @JsonKey()
  final String text;
  final List<MessageFile> _files;
  @override
  @JsonKey()
  List<MessageFile> get files {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  @JsonKey(name: 'type_message', defaultValue: MessageType.text)
  final MessageType messageType;
  @override
  @JsonKey(name: 'reply')
  final int? replyId;
  @override
  @JsonKey(name: 'created_at')
  final String createdAtStr;

  @override
  String toString() {
    return 'Message(id: $id, authorId: $authorId, author: $author, chatId: $chatId, offerd: $offerd, text: $text, files: $files, messageType: $messageType, replyId: $replyId, createdAtStr: $createdAtStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.authorId, authorId) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.chatId, chatId) &&
            const DeepCollectionEquality().equals(other.offerd, offerd) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            const DeepCollectionEquality()
                .equals(other.messageType, messageType) &&
            const DeepCollectionEquality().equals(other.replyId, replyId) &&
            const DeepCollectionEquality()
                .equals(other.createdAtStr, createdAtStr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(authorId),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(chatId),
      const DeepCollectionEquality().hash(offerd),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(_files),
      const DeepCollectionEquality().hash(messageType),
      const DeepCollectionEquality().hash(replyId),
      const DeepCollectionEquality().hash(createdAtStr));

  @JsonKey(ignore: true)
  @override
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(
      this,
    );
  }
}

abstract class _Message extends Message {
  const factory _Message(
      {@JsonKey(name: '_id')
          required final int id,
      @JsonKey(name: 'author_id')
          final int? authorId,
      final MessageAuthor? author,
      @JsonKey(name: 'ad_id', defaultValue: 0)
          required final int chatId,
      @JsonKey(name: 'offer_id', defaultValue: 0)
          required final int offerd,
      final String text,
      final List<MessageFile> files,
      @JsonKey(name: 'type_message', defaultValue: MessageType.text)
          required final MessageType messageType,
      @JsonKey(name: 'reply')
          final int? replyId,
      @JsonKey(name: 'created_at')
          required final String createdAtStr}) = _$_Message;
  const _Message._() : super._();

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  @JsonKey(name: '_id')
  int get id;
  @override
  @JsonKey(name: 'author_id')
  int? get authorId;
  @override
  MessageAuthor? get author;
  @override
  @JsonKey(name: 'ad_id', defaultValue: 0)
  int get chatId;
  @override
  @JsonKey(name: 'offer_id', defaultValue: 0)
  int get offerd;
  @override
  String get text;
  @override
  List<MessageFile> get files;
  @override
  @JsonKey(name: 'type_message', defaultValue: MessageType.text)
  MessageType get messageType;
  @override
  @JsonKey(name: 'reply')
  int? get replyId;
  @override
  @JsonKey(name: 'created_at')
  String get createdAtStr;
  @override
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}
