// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_support_message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SendSupportMessageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) setText,
    required TResult Function() sendText,
    required TResult Function(List<String> pathes) sendImages,
    required TResult Function(List<String> pathes) sendFiles,
    required TResult Function(List<FileNameWithFileBytes> files)
        sendFilesFromWeb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? setText,
    TResult Function()? sendText,
    TResult Function(List<String> pathes)? sendImages,
    TResult Function(List<String> pathes)? sendFiles,
    TResult Function(List<FileNameWithFileBytes> files)? sendFilesFromWeb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? setText,
    TResult Function()? sendText,
    TResult Function(List<String> pathes)? sendImages,
    TResult Function(List<String> pathes)? sendFiles,
    TResult Function(List<FileNameWithFileBytes> files)? sendFilesFromWeb,
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetText value)? setText,
    TResult Function(_SendText value)? sendText,
    TResult Function(_SendImages value)? sendImages,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_SendFilesFromWeb value)? sendFilesFromWeb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetText value)? setText,
    TResult Function(_SendText value)? sendText,
    TResult Function(_SendImages value)? sendImages,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_SendFilesFromWeb value)? sendFilesFromWeb,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendSupportMessageEventCopyWith<$Res> {
  factory $SendSupportMessageEventCopyWith(SendSupportMessageEvent value,
          $Res Function(SendSupportMessageEvent) then) =
      _$SendSupportMessageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendSupportMessageEventCopyWithImpl<$Res>
    implements $SendSupportMessageEventCopyWith<$Res> {
  _$SendSupportMessageEventCopyWithImpl(this._value, this._then);

  final SendSupportMessageEvent _value;
  // ignore: unused_field
  final $Res Function(SendSupportMessageEvent) _then;
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
    extends _$SendSupportMessageEventCopyWithImpl<$Res>
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
    return 'SendSupportMessageEvent.setText(text: $text)';
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
    required TResult orElse(),
  }) {
    if (setText != null) {
      return setText(this);
    }
    return orElse();
  }
}

abstract class _SetText implements SendSupportMessageEvent {
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
    extends _$SendSupportMessageEventCopyWithImpl<$Res>
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
    return 'SendSupportMessageEvent.sendText()';
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
    required TResult orElse(),
  }) {
    if (sendText != null) {
      return sendText(this);
    }
    return orElse();
  }
}

abstract class _SendText implements SendSupportMessageEvent {
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
    extends _$SendSupportMessageEventCopyWithImpl<$Res>
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
    return 'SendSupportMessageEvent.sendImages(pathes: $pathes)';
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
    required TResult orElse(),
  }) {
    if (sendImages != null) {
      return sendImages(this);
    }
    return orElse();
  }
}

abstract class _SendImages implements SendSupportMessageEvent {
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
    extends _$SendSupportMessageEventCopyWithImpl<$Res>
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
    return 'SendSupportMessageEvent.sendFiles(pathes: $pathes)';
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
    required TResult orElse(),
  }) {
    if (sendFiles != null) {
      return sendFiles(this);
    }
    return orElse();
  }
}

abstract class _SendFiles implements SendSupportMessageEvent {
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
    extends _$SendSupportMessageEventCopyWithImpl<$Res>
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
    return 'SendSupportMessageEvent.sendFilesFromWeb(files: $files)';
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
    required TResult orElse(),
  }) {
    if (sendFilesFromWeb != null) {
      return sendFilesFromWeb(this);
    }
    return orElse();
  }
}

abstract class _SendFilesFromWeb implements SendSupportMessageEvent {
  const factory _SendFilesFromWeb(final List<FileNameWithFileBytes> files) =
      _$_SendFilesFromWeb;

  List<FileNameWithFileBytes> get files;
  @JsonKey(ignore: true)
  _$$_SendFilesFromWebCopyWith<_$_SendFilesFromWeb> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SendSupportMessageState {
  String get text => throw _privateConstructorUsedError;
  StateStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendSupportMessageStateCopyWith<SendSupportMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendSupportMessageStateCopyWith<$Res> {
  factory $SendSupportMessageStateCopyWith(SendSupportMessageState value,
          $Res Function(SendSupportMessageState) then) =
      _$SendSupportMessageStateCopyWithImpl<$Res>;
  $Res call({String text, StateStatus status});

  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$SendSupportMessageStateCopyWithImpl<$Res>
    implements $SendSupportMessageStateCopyWith<$Res> {
  _$SendSupportMessageStateCopyWithImpl(this._value, this._then);

  final SendSupportMessageState _value;
  // ignore: unused_field
  final $Res Function(SendSupportMessageState) _then;

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
abstract class _$$_SendSupportMessageStateCopyWith<$Res>
    implements $SendSupportMessageStateCopyWith<$Res> {
  factory _$$_SendSupportMessageStateCopyWith(_$_SendSupportMessageState value,
          $Res Function(_$_SendSupportMessageState) then) =
      __$$_SendSupportMessageStateCopyWithImpl<$Res>;
  @override
  $Res call({String text, StateStatus status});

  @override
  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_SendSupportMessageStateCopyWithImpl<$Res>
    extends _$SendSupportMessageStateCopyWithImpl<$Res>
    implements _$$_SendSupportMessageStateCopyWith<$Res> {
  __$$_SendSupportMessageStateCopyWithImpl(_$_SendSupportMessageState _value,
      $Res Function(_$_SendSupportMessageState) _then)
      : super(_value, (v) => _then(v as _$_SendSupportMessageState));

  @override
  _$_SendSupportMessageState get _value =>
      super._value as _$_SendSupportMessageState;

  @override
  $Res call({
    Object? text = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_SendSupportMessageState(
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

class _$_SendSupportMessageState implements _SendSupportMessageState {
  const _$_SendSupportMessageState(
      {this.text = '', this.status = const StateStatus()});

  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final StateStatus status;

  @override
  String toString() {
    return 'SendSupportMessageState(text: $text, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendSupportMessageState &&
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
  _$$_SendSupportMessageStateCopyWith<_$_SendSupportMessageState>
      get copyWith =>
          __$$_SendSupportMessageStateCopyWithImpl<_$_SendSupportMessageState>(
              this, _$identity);
}

abstract class _SendSupportMessageState implements SendSupportMessageState {
  const factory _SendSupportMessageState(
      {final String text,
      final StateStatus status}) = _$_SendSupportMessageState;

  @override
  String get text;
  @override
  StateStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_SendSupportMessageStateCopyWith<_$_SendSupportMessageState>
      get copyWith => throw _privateConstructorUsedError;
}
