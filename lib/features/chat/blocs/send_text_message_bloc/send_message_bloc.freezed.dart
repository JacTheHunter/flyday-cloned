// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SendMessageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) setText,
    required TResult Function() sendText,
    required TResult Function(List<String> pathes) sendImages,
    required TResult Function(List<String> pathes) sendFiles,
    required TResult Function(List<FileNameWithFileBytes> files)
        sendFilesFromWeb,
    required TResult Function(List<Document> documents) sendDocuments,
    required TResult Function() receiveOwnMessage,
    required TResult Function(String error) errorFromSocket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? setText,
    TResult Function()? sendText,
    TResult Function(List<String> pathes)? sendImages,
    TResult Function(List<String> pathes)? sendFiles,
    TResult Function(List<FileNameWithFileBytes> files)? sendFilesFromWeb,
    TResult Function(List<Document> documents)? sendDocuments,
    TResult Function()? receiveOwnMessage,
    TResult Function(String error)? errorFromSocket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? setText,
    TResult Function()? sendText,
    TResult Function(List<String> pathes)? sendImages,
    TResult Function(List<String> pathes)? sendFiles,
    TResult Function(List<FileNameWithFileBytes> files)? sendFilesFromWeb,
    TResult Function(List<Document> documents)? sendDocuments,
    TResult Function()? receiveOwnMessage,
    TResult Function(String error)? errorFromSocket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetText value) setText,
    required TResult Function(_SendText value) sendText,
    required TResult Function(_SendImages value) sendImages,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_SendFilesFromWeb value) sendFilesFromWeb,
    required TResult Function(_SendDocuments value) sendDocuments,
    required TResult Function(_ReceiveOwnMessage value) receiveOwnMessage,
    required TResult Function(_ErrorFromSocket value) errorFromSocket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetText value)? setText,
    TResult Function(_SendText value)? sendText,
    TResult Function(_SendImages value)? sendImages,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_SendFilesFromWeb value)? sendFilesFromWeb,
    TResult Function(_SendDocuments value)? sendDocuments,
    TResult Function(_ReceiveOwnMessage value)? receiveOwnMessage,
    TResult Function(_ErrorFromSocket value)? errorFromSocket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetText value)? setText,
    TResult Function(_SendText value)? sendText,
    TResult Function(_SendImages value)? sendImages,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_SendFilesFromWeb value)? sendFilesFromWeb,
    TResult Function(_SendDocuments value)? sendDocuments,
    TResult Function(_ReceiveOwnMessage value)? receiveOwnMessage,
    TResult Function(_ErrorFromSocket value)? errorFromSocket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageEventCopyWith<$Res> {
  factory $SendMessageEventCopyWith(
          SendMessageEvent value, $Res Function(SendMessageEvent) then) =
      _$SendMessageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendMessageEventCopyWithImpl<$Res>
    implements $SendMessageEventCopyWith<$Res> {
  _$SendMessageEventCopyWithImpl(this._value, this._then);

  final SendMessageEvent _value;
  // ignore: unused_field
  final $Res Function(SendMessageEvent) _then;
}

/// @nodoc
abstract class _$$_SetTextCopyWith<$Res> {
  factory _$$_SetTextCopyWith(
          _$_SetText value, $Res Function(_$_SetText) then) =
      __$$_SetTextCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class __$$_SetTextCopyWithImpl<$Res>
    extends _$SendMessageEventCopyWithImpl<$Res>
    implements _$$_SetTextCopyWith<$Res> {
  __$$_SetTextCopyWithImpl(_$_SetText _value, $Res Function(_$_SetText) _then)
      : super(_value, (v) => _then(v as _$_SetText));

  @override
  _$_SetText get _value => super._value as _$_SetText;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$_SetText(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetText implements _SetText {
  const _$_SetText(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'SendMessageEvent.setText(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetText &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$_SetTextCopyWith<_$_SetText> get copyWith =>
      __$$_SetTextCopyWithImpl<_$_SetText>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) setText,
    required TResult Function() sendText,
    required TResult Function(List<String> pathes) sendImages,
    required TResult Function(List<String> pathes) sendFiles,
    required TResult Function(List<FileNameWithFileBytes> files)
        sendFilesFromWeb,
    required TResult Function(List<Document> documents) sendDocuments,
    required TResult Function() receiveOwnMessage,
    required TResult Function(String error) errorFromSocket,
  }) {
    return setText(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? setText,
    TResult Function()? sendText,
    TResult Function(List<String> pathes)? sendImages,
    TResult Function(List<String> pathes)? sendFiles,
    TResult Function(List<FileNameWithFileBytes> files)? sendFilesFromWeb,
    TResult Function(List<Document> documents)? sendDocuments,
    TResult Function()? receiveOwnMessage,
    TResult Function(String error)? errorFromSocket,
  }) {
    return setText?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? setText,
    TResult Function()? sendText,
    TResult Function(List<String> pathes)? sendImages,
    TResult Function(List<String> pathes)? sendFiles,
    TResult Function(List<FileNameWithFileBytes> files)? sendFilesFromWeb,
    TResult Function(List<Document> documents)? sendDocuments,
    TResult Function()? receiveOwnMessage,
    TResult Function(String error)? errorFromSocket,
    required TResult orElse(),
  }) {
    if (setText != null) {
      return setText(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetText value) setText,
    required TResult Function(_SendText value) sendText,
    required TResult Function(_SendImages value) sendImages,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_SendFilesFromWeb value) sendFilesFromWeb,
    required TResult Function(_SendDocuments value) sendDocuments,
    required TResult Function(_ReceiveOwnMessage value) receiveOwnMessage,
    required TResult Function(_ErrorFromSocket value) errorFromSocket,
  }) {
    return setText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetText value)? setText,
    TResult Function(_SendText value)? sendText,
    TResult Function(_SendImages value)? sendImages,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_SendFilesFromWeb value)? sendFilesFromWeb,
    TResult Function(_SendDocuments value)? sendDocuments,
    TResult Function(_ReceiveOwnMessage value)? receiveOwnMessage,
    TResult Function(_ErrorFromSocket value)? errorFromSocket,
  }) {
    return setText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetText value)? setText,
    TResult Function(_SendText value)? sendText,
    TResult Function(_SendImages value)? sendImages,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_SendFilesFromWeb value)? sendFilesFromWeb,
    TResult Function(_SendDocuments value)? sendDocuments,
    TResult Function(_ReceiveOwnMessage value)? receiveOwnMessage,
    TResult Function(_ErrorFromSocket value)? errorFromSocket,
    required TResult orElse(),
  }) {
    if (setText != null) {
      return setText(this);
    }
    return orElse();
  }
}

abstract class _SetText implements SendMessageEvent {
  const factory _SetText(final String text) = _$_SetText;

  String get text;
  @JsonKey(ignore: true)
  _$$_SetTextCopyWith<_$_SetText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendTextCopyWith<$Res> {
  factory _$$_SendTextCopyWith(
          _$_SendText value, $Res Function(_$_SendText) then) =
      __$$_SendTextCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SendTextCopyWithImpl<$Res>
    extends _$SendMessageEventCopyWithImpl<$Res>
    implements _$$_SendTextCopyWith<$Res> {
  __$$_SendTextCopyWithImpl(
      _$_SendText _value, $Res Function(_$_SendText) _then)
      : super(_value, (v) => _then(v as _$_SendText));

  @override
  _$_SendText get _value => super._value as _$_SendText;
}

/// @nodoc

class _$_SendText implements _SendText {
  const _$_SendText();

  @override
  String toString() {
    return 'SendMessageEvent.sendText()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SendText);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) setText,
    required TResult Function() sendText,
    required TResult Function(List<String> pathes) sendImages,
    required TResult Function(List<String> pathes) sendFiles,
    required TResult Function(List<FileNameWithFileBytes> files)
        sendFilesFromWeb,
    required TResult Function(List<Document> documents) sendDocuments,
    required TResult Function() receiveOwnMessage,
    required TResult Function(String error) errorFromSocket,
  }) {
    return sendText();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? setText,
    TResult Function()? sendText,
    TResult Function(List<String> pathes)? sendImages,
    TResult Function(List<String> pathes)? sendFiles,
    TResult Function(List<FileNameWithFileBytes> files)? sendFilesFromWeb,
    TResult Function(List<Document> documents)? sendDocuments,
    TResult Function()? receiveOwnMessage,
    TResult Function(String error)? errorFromSocket,
  }) {
    return sendText?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? setText,
    TResult Function()? sendText,
    TResult Function(List<String> pathes)? sendImages,
    TResult Function(List<String> pathes)? sendFiles,
    TResult Function(List<FileNameWithFileBytes> files)? sendFilesFromWeb,
    TResult Function(List<Document> documents)? sendDocuments,
    TResult Function()? receiveOwnMessage,
    TResult Function(String error)? errorFromSocket,
    required TResult orElse(),
  }) {
    if (sendText != null) {
      return sendText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetText value) setText,
    required TResult Function(_SendText value) sendText,
    required TResult Function(_SendImages value) sendImages,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_SendFilesFromWeb value) sendFilesFromWeb,
    required TResult Function(_SendDocuments value) sendDocuments,
    required TResult Function(_ReceiveOwnMessage value) receiveOwnMessage,
    required TResult Function(_ErrorFromSocket value) errorFromSocket,
  }) {
    return sendText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetText value)? setText,
    TResult Function(_SendText value)? sendText,
    TResult Function(_SendImages value)? sendImages,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_SendFilesFromWeb value)? sendFilesFromWeb,
    TResult Function(_SendDocuments value)? sendDocuments,
    TResult Function(_ReceiveOwnMessage value)? receiveOwnMessage,
    TResult Function(_ErrorFromSocket value)? errorFromSocket,
  }) {
    return sendText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetText value)? setText,
    TResult Function(_SendText value)? sendText,
    TResult Function(_SendImages value)? sendImages,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_SendFilesFromWeb value)? sendFilesFromWeb,
    TResult Function(_SendDocuments value)? sendDocuments,
    TResult Function(_ReceiveOwnMessage value)? receiveOwnMessage,
    TResult Function(_ErrorFromSocket value)? errorFromSocket,
    required TResult orElse(),
  }) {
    if (sendText != null) {
      return sendText(this);
    }
    return orElse();
  }
}

abstract class _SendText implements SendMessageEvent {
  const factory _SendText() = _$_SendText;
}

/// @nodoc
abstract class _$$_SendImagesCopyWith<$Res> {
  factory _$$_SendImagesCopyWith(
          _$_SendImages value, $Res Function(_$_SendImages) then) =
      __$$_SendImagesCopyWithImpl<$Res>;
  $Res call({List<String> pathes});
}

/// @nodoc
class __$$_SendImagesCopyWithImpl<$Res>
    extends _$SendMessageEventCopyWithImpl<$Res>
    implements _$$_SendImagesCopyWith<$Res> {
  __$$_SendImagesCopyWithImpl(
      _$_SendImages _value, $Res Function(_$_SendImages) _then)
      : super(_value, (v) => _then(v as _$_SendImages));

  @override
  _$_SendImages get _value => super._value as _$_SendImages;

  @override
  $Res call({
    Object? pathes = freezed,
  }) {
    return _then(_$_SendImages(
      pathes == freezed
          ? _value._pathes
          : pathes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_SendImages implements _SendImages {
  const _$_SendImages(final List<String> pathes) : _pathes = pathes;

  final List<String> _pathes;
  @override
  List<String> get pathes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pathes);
  }

  @override
  String toString() {
    return 'SendMessageEvent.sendImages(pathes: $pathes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendImages &&
            const DeepCollectionEquality().equals(other._pathes, _pathes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pathes));

  @JsonKey(ignore: true)
  @override
  _$$_SendImagesCopyWith<_$_SendImages> get copyWith =>
      __$$_SendImagesCopyWithImpl<_$_SendImages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) setText,
    required TResult Function() sendText,
    required TResult Function(List<String> pathes) sendImages,
    required TResult Function(List<String> pathes) sendFiles,
    required TResult Function(List<FileNameWithFileBytes> files)
        sendFilesFromWeb,
    required TResult Function(List<Document> documents) sendDocuments,
    required TResult Function() receiveOwnMessage,
    required TResult Function(String error) errorFromSocket,
  }) {
    return sendImages(pathes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? setText,
    TResult Function()? sendText,
    TResult Function(List<String> pathes)? sendImages,
    TResult Function(List<String> pathes)? sendFiles,
    TResult Function(List<FileNameWithFileBytes> files)? sendFilesFromWeb,
    TResult Function(List<Document> documents)? sendDocuments,
    TResult Function()? receiveOwnMessage,
    TResult Function(String error)? errorFromSocket,
  }) {
    return sendImages?.call(pathes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? setText,
    TResult Function()? sendText,
    TResult Function(List<String> pathes)? sendImages,
    TResult Function(List<String> pathes)? sendFiles,
    TResult Function(List<FileNameWithFileBytes> files)? sendFilesFromWeb,
    TResult Function(List<Document> documents)? sendDocuments,
    TResult Function()? receiveOwnMessage,
    TResult Function(String error)? errorFromSocket,
    required TResult orElse(),
  }) {
    if (sendImages != null) {
      return sendImages(pathes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetText value) setText,
    required TResult Function(_SendText value) sendText,
    required TResult Function(_SendImages value) sendImages,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_SendFilesFromWeb value) sendFilesFromWeb,
    required TResult Function(_SendDocuments value) sendDocuments,
    required TResult Function(_ReceiveOwnMessage value) receiveOwnMessage,
    required TResult Function(_ErrorFromSocket value) errorFromSocket,
  }) {
    return sendImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetText value)? setText,
    TResult Function(_SendText value)? sendText,
    TResult Function(_SendImages value)? sendImages,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_SendFilesFromWeb value)? sendFilesFromWeb,
    TResult Function(_SendDocuments value)? sendDocuments,
    TResult Function(_ReceiveOwnMessage value)? receiveOwnMessage,
    TResult Function(_ErrorFromSocket value)? errorFromSocket,
  }) {
    return sendImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetText value)? setText,
    TResult Function(_SendText value)? sendText,
    TResult Function(_SendImages value)? sendImages,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_SendFilesFromWeb value)? sendFilesFromWeb,
    TResult Function(_SendDocuments value)? sendDocuments,
    TResult Function(_ReceiveOwnMessage value)? receiveOwnMessage,
    TResult Function(_ErrorFromSocket value)? errorFromSocket,
    required TResult orElse(),
  }) {
    if (sendImages != null) {
      return sendImages(this);
    }
    return orElse();
  }
}

abstract class _SendImages implements SendMessageEvent {
  const factory _SendImages(final List<String> pathes) = _$_SendImages;

  List<String> get pathes;
  @JsonKey(ignore: true)
  _$$_SendImagesCopyWith<_$_SendImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendFilesCopyWith<$Res> {
  factory _$$_SendFilesCopyWith(
          _$_SendFiles value, $Res Function(_$_SendFiles) then) =
      __$$_SendFilesCopyWithImpl<$Res>;
  $Res call({List<String> pathes});
}

/// @nodoc
class __$$_SendFilesCopyWithImpl<$Res>
    extends _$SendMessageEventCopyWithImpl<$Res>
    implements _$$_SendFilesCopyWith<$Res> {
  __$$_SendFilesCopyWithImpl(
      _$_SendFiles _value, $Res Function(_$_SendFiles) _then)
      : super(_value, (v) => _then(v as _$_SendFiles));

  @override
  _$_SendFiles get _value => super._value as _$_SendFiles;

  @override
  $Res call({
    Object? pathes = freezed,
  }) {
    return _then(_$_SendFiles(
      pathes == freezed
          ? _value._pathes
          : pathes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_SendFiles implements _SendFiles {
  const _$_SendFiles(final List<String> pathes) : _pathes = pathes;

  final List<String> _pathes;
  @override
  List<String> get pathes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pathes);
  }

  @override
  String toString() {
    return 'SendMessageEvent.sendFiles(pathes: $pathes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendFiles &&
            const DeepCollectionEquality().equals(other._pathes, _pathes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pathes));

  @JsonKey(ignore: true)
  @override
  _$$_SendFilesCopyWith<_$_SendFiles> get copyWith =>
      __$$_SendFilesCopyWithImpl<_$_SendFiles>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) setText,
    required TResult Function() sendText,
    required TResult Function(List<String> pathes) sendImages,
    required TResult Function(List<String> pathes) sendFiles,
    required TResult Function(List<FileNameWithFileBytes> files)
        sendFilesFromWeb,
    required TResult Function(List<Document> documents) sendDocuments,
    required TResult Function() receiveOwnMessage,
    required TResult Function(String error) errorFromSocket,
  }) {
    return sendFiles(pathes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? setText,
    TResult Function()? sendText,
    TResult Function(List<String> pathes)? sendImages,
    TResult Function(List<String> pathes)? sendFiles,
    TResult Function(List<FileNameWithFileBytes> files)? sendFilesFromWeb,
    TResult Function(List<Document> documents)? sendDocuments,
    TResult Function()? receiveOwnMessage,
    TResult Function(String error)? errorFromSocket,
  }) {
    return sendFiles?.call(pathes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? setText,
    TResult Function()? sendText,
    TResult Function(List<String> pathes)? sendImages,
    TResult Function(List<String> pathes)? sendFiles,
    TResult Function(List<FileNameWithFileBytes> files)? sendFilesFromWeb,
    TResult Function(List<Document> documents)? sendDocuments,
    TResult Function()? receiveOwnMessage,
    TResult Function(String error)? errorFromSocket,
    required TResult orElse(),
  }) {
    if (sendFiles != null) {
      return sendFiles(pathes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetText value) setText,
    required TResult Function(_SendText value) sendText,
    required TResult Function(_SendImages value) sendImages,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_SendFilesFromWeb value) sendFilesFromWeb,
    required TResult Function(_SendDocuments value) sendDocuments,
    required TResult Function(_ReceiveOwnMessage value) receiveOwnMessage,
    required TResult Function(_ErrorFromSocket value) errorFromSocket,
  }) {
    return sendFiles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetText value)? setText,
    TResult Function(_SendText value)? sendText,
    TResult Function(_SendImages value)? sendImages,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_SendFilesFromWeb value)? sendFilesFromWeb,
    TResult Function(_SendDocuments value)? sendDocuments,
    TResult Function(_ReceiveOwnMessage value)? receiveOwnMessage,
    TResult Function(_ErrorFromSocket value)? errorFromSocket,
  }) {
    return sendFiles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetText value)? setText,
    TResult Function(_SendText value)? sendText,
    TResult Function(_SendImages value)? sendImages,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_SendFilesFromWeb value)? sendFilesFromWeb,
    TResult Function(_SendDocuments value)? sendDocuments,
    TResult Function(_ReceiveOwnMessage value)? receiveOwnMessage,
    TResult Function(_ErrorFromSocket value)? errorFromSocket,
    required TResult orElse(),
  }) {
    if (sendFiles != null) {
      return sendFiles(this);
    }
    return orElse();
  }
}

abstract class _SendFiles implements SendMessageEvent {
  const factory _SendFiles(final List<String> pathes) = _$_SendFiles;

  List<String> get pathes;
  @JsonKey(ignore: true)
  _$$_SendFilesCopyWith<_$_SendFiles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendFilesFromWebCopyWith<$Res> {
  factory _$$_SendFilesFromWebCopyWith(
          _$_SendFilesFromWeb value, $Res Function(_$_SendFilesFromWeb) then) =
      __$$_SendFilesFromWebCopyWithImpl<$Res>;
  $Res call({List<FileNameWithFileBytes> files});
}

/// @nodoc
class __$$_SendFilesFromWebCopyWithImpl<$Res>
    extends _$SendMessageEventCopyWithImpl<$Res>
    implements _$$_SendFilesFromWebCopyWith<$Res> {
  __$$_SendFilesFromWebCopyWithImpl(
      _$_SendFilesFromWeb _value, $Res Function(_$_SendFilesFromWeb) _then)
      : super(_value, (v) => _then(v as _$_SendFilesFromWeb));

  @override
  _$_SendFilesFromWeb get _value => super._value as _$_SendFilesFromWeb;

  @override
  $Res call({
    Object? files = freezed,
  }) {
    return _then(_$_SendFilesFromWeb(
      files == freezed
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FileNameWithFileBytes>,
    ));
  }
}

/// @nodoc

class _$_SendFilesFromWeb implements _SendFilesFromWeb {
  const _$_SendFilesFromWeb(final List<FileNameWithFileBytes> files)
      : _files = files;

  final List<FileNameWithFileBytes> _files;
  @override
  List<FileNameWithFileBytes> get files {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  String toString() {
    return 'SendMessageEvent.sendFilesFromWeb(files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendFilesFromWeb &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  _$$_SendFilesFromWebCopyWith<_$_SendFilesFromWeb> get copyWith =>
      __$$_SendFilesFromWebCopyWithImpl<_$_SendFilesFromWeb>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) setText,
    required TResult Function() sendText,
    required TResult Function(List<String> pathes) sendImages,
    required TResult Function(List<String> pathes) sendFiles,
    required TResult Function(List<FileNameWithFileBytes> files)
        sendFilesFromWeb,
    required TResult Function(List<Document> documents) sendDocuments,
    required TResult Function() receiveOwnMessage,
    required TResult Function(String error) errorFromSocket,
  }) {
    return sendFilesFromWeb(files);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? setText,
    TResult Function()? sendText,
    TResult Function(List<String> pathes)? sendImages,
    TResult Function(List<String> pathes)? sendFiles,
    TResult Function(List<FileNameWithFileBytes> files)? sendFilesFromWeb,
    TResult Function(List<Document> documents)? sendDocuments,
    TResult Function()? receiveOwnMessage,
    TResult Function(String error)? errorFromSocket,
  }) {
    return sendFilesFromWeb?.call(files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? setText,
    TResult Function()? sendText,
    TResult Function(List<String> pathes)? sendImages,
    TResult Function(List<String> pathes)? sendFiles,
    TResult Function(List<FileNameWithFileBytes> files)? sendFilesFromWeb,
    TResult Function(List<Document> documents)? sendDocuments,
    TResult Function()? receiveOwnMessage,
    TResult Function(String error)? errorFromSocket,
    required TResult orElse(),
  }) {
    if (sendFilesFromWeb != null) {
      return sendFilesFromWeb(files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetText value) setText,
    required TResult Function(_SendText value) sendText,
    required TResult Function(_SendImages value) sendImages,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_SendFilesFromWeb value) sendFilesFromWeb,
    required TResult Function(_SendDocuments value) sendDocuments,
    required TResult Function(_ReceiveOwnMessage value) receiveOwnMessage,
    required TResult Function(_ErrorFromSocket value) errorFromSocket,
  }) {
    return sendFilesFromWeb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetText value)? setText,
    TResult Function(_SendText value)? sendText,
    TResult Function(_SendImages value)? sendImages,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_SendFilesFromWeb value)? sendFilesFromWeb,
    TResult Function(_SendDocuments value)? sendDocuments,
    TResult Function(_ReceiveOwnMessage value)? receiveOwnMessage,
    TResult Function(_ErrorFromSocket value)? errorFromSocket,
  }) {
    return sendFilesFromWeb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetText value)? setText,
    TResult Function(_SendText value)? sendText,
    TResult Function(_SendImages value)? sendImages,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_SendFilesFromWeb value)? sendFilesFromWeb,
    TResult Function(_SendDocuments value)? sendDocuments,
    TResult Function(_ReceiveOwnMessage value)? receiveOwnMessage,
    TResult Function(_ErrorFromSocket value)? errorFromSocket,
    required TResult orElse(),
  }) {
    if (sendFilesFromWeb != null) {
      return sendFilesFromWeb(this);
    }
    return orElse();
  }
}

abstract class _SendFilesFromWeb implements SendMessageEvent {
  const factory _SendFilesFromWeb(final List<FileNameWithFileBytes> files) =
      _$_SendFilesFromWeb;

  List<FileNameWithFileBytes> get files;
  @JsonKey(ignore: true)
  _$$_SendFilesFromWebCopyWith<_$_SendFilesFromWeb> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendDocumentsCopyWith<$Res> {
  factory _$$_SendDocumentsCopyWith(
          _$_SendDocuments value, $Res Function(_$_SendDocuments) then) =
      __$$_SendDocumentsCopyWithImpl<$Res>;
  $Res call({List<Document> documents});
}

/// @nodoc
class __$$_SendDocumentsCopyWithImpl<$Res>
    extends _$SendMessageEventCopyWithImpl<$Res>
    implements _$$_SendDocumentsCopyWith<$Res> {
  __$$_SendDocumentsCopyWithImpl(
      _$_SendDocuments _value, $Res Function(_$_SendDocuments) _then)
      : super(_value, (v) => _then(v as _$_SendDocuments));

  @override
  _$_SendDocuments get _value => super._value as _$_SendDocuments;

  @override
  $Res call({
    Object? documents = freezed,
  }) {
    return _then(_$_SendDocuments(
      documents == freezed
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
    ));
  }
}

/// @nodoc

class _$_SendDocuments implements _SendDocuments {
  const _$_SendDocuments(final List<Document> documents)
      : _documents = documents;

  final List<Document> _documents;
  @override
  List<Document> get documents {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  String toString() {
    return 'SendMessageEvent.sendDocuments(documents: $documents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendDocuments &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_documents));

  @JsonKey(ignore: true)
  @override
  _$$_SendDocumentsCopyWith<_$_SendDocuments> get copyWith =>
      __$$_SendDocumentsCopyWithImpl<_$_SendDocuments>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) setText,
    required TResult Function() sendText,
    required TResult Function(List<String> pathes) sendImages,
    required TResult Function(List<String> pathes) sendFiles,
    required TResult Function(List<FileNameWithFileBytes> files)
        sendFilesFromWeb,
    required TResult Function(List<Document> documents) sendDocuments,
    required TResult Function() receiveOwnMessage,
    required TResult Function(String error) errorFromSocket,
  }) {
    return sendDocuments(documents);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? setText,
    TResult Function()? sendText,
    TResult Function(List<String> pathes)? sendImages,
    TResult Function(List<String> pathes)? sendFiles,
    TResult Function(List<FileNameWithFileBytes> files)? sendFilesFromWeb,
    TResult Function(List<Document> documents)? sendDocuments,
    TResult Function()? receiveOwnMessage,
    TResult Function(String error)? errorFromSocket,
  }) {
    return sendDocuments?.call(documents);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? setText,
    TResult Function()? sendText,
    TResult Function(List<String> pathes)? sendImages,
    TResult Function(List<String> pathes)? sendFiles,
    TResult Function(List<FileNameWithFileBytes> files)? sendFilesFromWeb,
    TResult Function(List<Document> documents)? sendDocuments,
    TResult Function()? receiveOwnMessage,
    TResult Function(String error)? errorFromSocket,
    required TResult orElse(),
  }) {
    if (sendDocuments != null) {
      return sendDocuments(documents);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetText value) setText,
    required TResult Function(_SendText value) sendText,
    required TResult Function(_SendImages value) sendImages,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_SendFilesFromWeb value) sendFilesFromWeb,
    required TResult Function(_SendDocuments value) sendDocuments,
    required TResult Function(_ReceiveOwnMessage value) receiveOwnMessage,
    required TResult Function(_ErrorFromSocket value) errorFromSocket,
  }) {
    return sendDocuments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetText value)? setText,
    TResult Function(_SendText value)? sendText,
    TResult Function(_SendImages value)? sendImages,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_SendFilesFromWeb value)? sendFilesFromWeb,
    TResult Function(_SendDocuments value)? sendDocuments,
    TResult Function(_ReceiveOwnMessage value)? receiveOwnMessage,
    TResult Function(_ErrorFromSocket value)? errorFromSocket,
  }) {
    return sendDocuments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetText value)? setText,
    TResult Function(_SendText value)? sendText,
    TResult Function(_SendImages value)? sendImages,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_SendFilesFromWeb value)? sendFilesFromWeb,
    TResult Function(_SendDocuments value)? sendDocuments,
    TResult Function(_ReceiveOwnMessage value)? receiveOwnMessage,
    TResult Function(_ErrorFromSocket value)? errorFromSocket,
    required TResult orElse(),
  }) {
    if (sendDocuments != null) {
      return sendDocuments(this);
    }
    return orElse();
  }
}

abstract class _SendDocuments implements SendMessageEvent {
  const factory _SendDocuments(final List<Document> documents) =
      _$_SendDocuments;

  List<Document> get documents;
  @JsonKey(ignore: true)
  _$$_SendDocumentsCopyWith<_$_SendDocuments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReceiveOwnMessageCopyWith<$Res> {
  factory _$$_ReceiveOwnMessageCopyWith(_$_ReceiveOwnMessage value,
          $Res Function(_$_ReceiveOwnMessage) then) =
      __$$_ReceiveOwnMessageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReceiveOwnMessageCopyWithImpl<$Res>
    extends _$SendMessageEventCopyWithImpl<$Res>
    implements _$$_ReceiveOwnMessageCopyWith<$Res> {
  __$$_ReceiveOwnMessageCopyWithImpl(
      _$_ReceiveOwnMessage _value, $Res Function(_$_ReceiveOwnMessage) _then)
      : super(_value, (v) => _then(v as _$_ReceiveOwnMessage));

  @override
  _$_ReceiveOwnMessage get _value => super._value as _$_ReceiveOwnMessage;
}

/// @nodoc

class _$_ReceiveOwnMessage implements _ReceiveOwnMessage {
  const _$_ReceiveOwnMessage();

  @override
  String toString() {
    return 'SendMessageEvent.receiveOwnMessage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReceiveOwnMessage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) setText,
    required TResult Function() sendText,
    required TResult Function(List<String> pathes) sendImages,
    required TResult Function(List<String> pathes) sendFiles,
    required TResult Function(List<FileNameWithFileBytes> files)
        sendFilesFromWeb,
    required TResult Function(List<Document> documents) sendDocuments,
    required TResult Function() receiveOwnMessage,
    required TResult Function(String error) errorFromSocket,
  }) {
    return receiveOwnMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? setText,
    TResult Function()? sendText,
    TResult Function(List<String> pathes)? sendImages,
    TResult Function(List<String> pathes)? sendFiles,
    TResult Function(List<FileNameWithFileBytes> files)? sendFilesFromWeb,
    TResult Function(List<Document> documents)? sendDocuments,
    TResult Function()? receiveOwnMessage,
    TResult Function(String error)? errorFromSocket,
  }) {
    return receiveOwnMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? setText,
    TResult Function()? sendText,
    TResult Function(List<String> pathes)? sendImages,
    TResult Function(List<String> pathes)? sendFiles,
    TResult Function(List<FileNameWithFileBytes> files)? sendFilesFromWeb,
    TResult Function(List<Document> documents)? sendDocuments,
    TResult Function()? receiveOwnMessage,
    TResult Function(String error)? errorFromSocket,
    required TResult orElse(),
  }) {
    if (receiveOwnMessage != null) {
      return receiveOwnMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetText value) setText,
    required TResult Function(_SendText value) sendText,
    required TResult Function(_SendImages value) sendImages,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_SendFilesFromWeb value) sendFilesFromWeb,
    required TResult Function(_SendDocuments value) sendDocuments,
    required TResult Function(_ReceiveOwnMessage value) receiveOwnMessage,
    required TResult Function(_ErrorFromSocket value) errorFromSocket,
  }) {
    return receiveOwnMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetText value)? setText,
    TResult Function(_SendText value)? sendText,
    TResult Function(_SendImages value)? sendImages,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_SendFilesFromWeb value)? sendFilesFromWeb,
    TResult Function(_SendDocuments value)? sendDocuments,
    TResult Function(_ReceiveOwnMessage value)? receiveOwnMessage,
    TResult Function(_ErrorFromSocket value)? errorFromSocket,
  }) {
    return receiveOwnMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetText value)? setText,
    TResult Function(_SendText value)? sendText,
    TResult Function(_SendImages value)? sendImages,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_SendFilesFromWeb value)? sendFilesFromWeb,
    TResult Function(_SendDocuments value)? sendDocuments,
    TResult Function(_ReceiveOwnMessage value)? receiveOwnMessage,
    TResult Function(_ErrorFromSocket value)? errorFromSocket,
    required TResult orElse(),
  }) {
    if (receiveOwnMessage != null) {
      return receiveOwnMessage(this);
    }
    return orElse();
  }
}

abstract class _ReceiveOwnMessage implements SendMessageEvent {
  const factory _ReceiveOwnMessage() = _$_ReceiveOwnMessage;
}

/// @nodoc
abstract class _$$_ErrorFromSocketCopyWith<$Res> {
  factory _$$_ErrorFromSocketCopyWith(
          _$_ErrorFromSocket value, $Res Function(_$_ErrorFromSocket) then) =
      __$$_ErrorFromSocketCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_ErrorFromSocketCopyWithImpl<$Res>
    extends _$SendMessageEventCopyWithImpl<$Res>
    implements _$$_ErrorFromSocketCopyWith<$Res> {
  __$$_ErrorFromSocketCopyWithImpl(
      _$_ErrorFromSocket _value, $Res Function(_$_ErrorFromSocket) _then)
      : super(_value, (v) => _then(v as _$_ErrorFromSocket));

  @override
  _$_ErrorFromSocket get _value => super._value as _$_ErrorFromSocket;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_ErrorFromSocket(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorFromSocket implements _ErrorFromSocket {
  const _$_ErrorFromSocket(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SendMessageEvent.errorFromSocket(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorFromSocket &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorFromSocketCopyWith<_$_ErrorFromSocket> get copyWith =>
      __$$_ErrorFromSocketCopyWithImpl<_$_ErrorFromSocket>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) setText,
    required TResult Function() sendText,
    required TResult Function(List<String> pathes) sendImages,
    required TResult Function(List<String> pathes) sendFiles,
    required TResult Function(List<FileNameWithFileBytes> files)
        sendFilesFromWeb,
    required TResult Function(List<Document> documents) sendDocuments,
    required TResult Function() receiveOwnMessage,
    required TResult Function(String error) errorFromSocket,
  }) {
    return errorFromSocket(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? setText,
    TResult Function()? sendText,
    TResult Function(List<String> pathes)? sendImages,
    TResult Function(List<String> pathes)? sendFiles,
    TResult Function(List<FileNameWithFileBytes> files)? sendFilesFromWeb,
    TResult Function(List<Document> documents)? sendDocuments,
    TResult Function()? receiveOwnMessage,
    TResult Function(String error)? errorFromSocket,
  }) {
    return errorFromSocket?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? setText,
    TResult Function()? sendText,
    TResult Function(List<String> pathes)? sendImages,
    TResult Function(List<String> pathes)? sendFiles,
    TResult Function(List<FileNameWithFileBytes> files)? sendFilesFromWeb,
    TResult Function(List<Document> documents)? sendDocuments,
    TResult Function()? receiveOwnMessage,
    TResult Function(String error)? errorFromSocket,
    required TResult orElse(),
  }) {
    if (errorFromSocket != null) {
      return errorFromSocket(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetText value) setText,
    required TResult Function(_SendText value) sendText,
    required TResult Function(_SendImages value) sendImages,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_SendFilesFromWeb value) sendFilesFromWeb,
    required TResult Function(_SendDocuments value) sendDocuments,
    required TResult Function(_ReceiveOwnMessage value) receiveOwnMessage,
    required TResult Function(_ErrorFromSocket value) errorFromSocket,
  }) {
    return errorFromSocket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetText value)? setText,
    TResult Function(_SendText value)? sendText,
    TResult Function(_SendImages value)? sendImages,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_SendFilesFromWeb value)? sendFilesFromWeb,
    TResult Function(_SendDocuments value)? sendDocuments,
    TResult Function(_ReceiveOwnMessage value)? receiveOwnMessage,
    TResult Function(_ErrorFromSocket value)? errorFromSocket,
  }) {
    return errorFromSocket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetText value)? setText,
    TResult Function(_SendText value)? sendText,
    TResult Function(_SendImages value)? sendImages,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_SendFilesFromWeb value)? sendFilesFromWeb,
    TResult Function(_SendDocuments value)? sendDocuments,
    TResult Function(_ReceiveOwnMessage value)? receiveOwnMessage,
    TResult Function(_ErrorFromSocket value)? errorFromSocket,
    required TResult orElse(),
  }) {
    if (errorFromSocket != null) {
      return errorFromSocket(this);
    }
    return orElse();
  }
}

abstract class _ErrorFromSocket implements SendMessageEvent {
  const factory _ErrorFromSocket(final String error) = _$_ErrorFromSocket;

  String get error;
  @JsonKey(ignore: true)
  _$$_ErrorFromSocketCopyWith<_$_ErrorFromSocket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SendMessageState {
  String get text => throw _privateConstructorUsedError;
  StateStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendMessageStateCopyWith<SendMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageStateCopyWith<$Res> {
  factory $SendMessageStateCopyWith(
          SendMessageState value, $Res Function(SendMessageState) then) =
      _$SendMessageStateCopyWithImpl<$Res>;
  $Res call({String text, StateStatus status});

  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$SendMessageStateCopyWithImpl<$Res>
    implements $SendMessageStateCopyWith<$Res> {
  _$SendMessageStateCopyWithImpl(this._value, this._then);

  final SendMessageState _value;
  // ignore: unused_field
  final $Res Function(SendMessageState) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
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
abstract class _$$_SendMessageStateCopyWith<$Res>
    implements $SendMessageStateCopyWith<$Res> {
  factory _$$_SendMessageStateCopyWith(
          _$_SendMessageState value, $Res Function(_$_SendMessageState) then) =
      __$$_SendMessageStateCopyWithImpl<$Res>;
  @override
  $Res call({String text, StateStatus status});

  @override
  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_SendMessageStateCopyWithImpl<$Res>
    extends _$SendMessageStateCopyWithImpl<$Res>
    implements _$$_SendMessageStateCopyWith<$Res> {
  __$$_SendMessageStateCopyWithImpl(
      _$_SendMessageState _value, $Res Function(_$_SendMessageState) _then)
      : super(_value, (v) => _then(v as _$_SendMessageState));

  @override
  _$_SendMessageState get _value => super._value as _$_SendMessageState;

  @override
  $Res call({
    Object? text = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_SendMessageState(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
    ));
  }
}

/// @nodoc

class _$_SendMessageState implements _SendMessageState {
  const _$_SendMessageState(
      {this.text = '', this.status = const StateStatus()});

  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final StateStatus status;

  @override
  String toString() {
    return 'SendMessageState(text: $text, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendMessageState &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_SendMessageStateCopyWith<_$_SendMessageState> get copyWith =>
      __$$_SendMessageStateCopyWithImpl<_$_SendMessageState>(this, _$identity);
}

abstract class _SendMessageState implements SendMessageState {
  const factory _SendMessageState(
      {final String text, final StateStatus status}) = _$_SendMessageState;

  @override
  String get text;
  @override
  StateStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_SendMessageStateCopyWith<_$_SendMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}
