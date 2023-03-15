// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file_message_cache_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FileMessageCacheEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() cache,
    required TResult Function(DownloadProgress downloadProgress) loading,
    required TResult Function(FileInfo fileInfo) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? cache,
    TResult Function(DownloadProgress downloadProgress)? loading,
    TResult Function(FileInfo fileInfo)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? cache,
    TResult Function(DownloadProgress downloadProgress)? loading,
    TResult Function(FileInfo fileInfo)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Cache value) cache,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Ready value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Cache value)? cache,
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Cache value)? cache,
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileMessageCacheEventCopyWith<$Res> {
  factory $FileMessageCacheEventCopyWith(FileMessageCacheEvent value,
          $Res Function(FileMessageCacheEvent) then) =
      _$FileMessageCacheEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileMessageCacheEventCopyWithImpl<$Res>
    implements $FileMessageCacheEventCopyWith<$Res> {
  _$FileMessageCacheEventCopyWithImpl(this._value, this._then);

  final FileMessageCacheEvent _value;
  // ignore: unused_field
  final $Res Function(FileMessageCacheEvent) _then;
}

/// @nodoc
abstract class _$$_StartCopyWith<$Res> {
  factory _$$_StartCopyWith(_$_Start value, $Res Function(_$_Start) then) =
      __$$_StartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartCopyWithImpl<$Res>
    extends _$FileMessageCacheEventCopyWithImpl<$Res>
    implements _$$_StartCopyWith<$Res> {
  __$$_StartCopyWithImpl(_$_Start _value, $Res Function(_$_Start) _then)
      : super(_value, (v) => _then(v as _$_Start));

  @override
  _$_Start get _value => super._value as _$_Start;
}

/// @nodoc

class _$_Start implements _Start {
  const _$_Start();

  @override
  String toString() {
    return 'FileMessageCacheEvent.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Start);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() cache,
    required TResult Function(DownloadProgress downloadProgress) loading,
    required TResult Function(FileInfo fileInfo) ready,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? cache,
    TResult Function(DownloadProgress downloadProgress)? loading,
    TResult Function(FileInfo fileInfo)? ready,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? cache,
    TResult Function(DownloadProgress downloadProgress)? loading,
    TResult Function(FileInfo fileInfo)? ready,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Cache value) cache,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Ready value) ready,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Cache value)? cache,
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Cache value)? cache,
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start implements FileMessageCacheEvent {
  const factory _Start() = _$_Start;
}

/// @nodoc
abstract class _$$_CacheCopyWith<$Res> {
  factory _$$_CacheCopyWith(_$_Cache value, $Res Function(_$_Cache) then) =
      __$$_CacheCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CacheCopyWithImpl<$Res>
    extends _$FileMessageCacheEventCopyWithImpl<$Res>
    implements _$$_CacheCopyWith<$Res> {
  __$$_CacheCopyWithImpl(_$_Cache _value, $Res Function(_$_Cache) _then)
      : super(_value, (v) => _then(v as _$_Cache));

  @override
  _$_Cache get _value => super._value as _$_Cache;
}

/// @nodoc

class _$_Cache implements _Cache {
  const _$_Cache();

  @override
  String toString() {
    return 'FileMessageCacheEvent.cache()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Cache);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() cache,
    required TResult Function(DownloadProgress downloadProgress) loading,
    required TResult Function(FileInfo fileInfo) ready,
  }) {
    return cache();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? cache,
    TResult Function(DownloadProgress downloadProgress)? loading,
    TResult Function(FileInfo fileInfo)? ready,
  }) {
    return cache?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? cache,
    TResult Function(DownloadProgress downloadProgress)? loading,
    TResult Function(FileInfo fileInfo)? ready,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Cache value) cache,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Ready value) ready,
  }) {
    return cache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Cache value)? cache,
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
  }) {
    return cache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Cache value)? cache,
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(this);
    }
    return orElse();
  }
}

abstract class _Cache implements FileMessageCacheEvent {
  const factory _Cache() = _$_Cache;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  $Res call({DownloadProgress downloadProgress});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$FileMessageCacheEventCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;

  @override
  $Res call({
    Object? downloadProgress = freezed,
  }) {
    return _then(_$_Loading(
      downloadProgress == freezed
          ? _value.downloadProgress
          : downloadProgress // ignore: cast_nullable_to_non_nullable
              as DownloadProgress,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading(this.downloadProgress);

  @override
  final DownloadProgress downloadProgress;

  @override
  String toString() {
    return 'FileMessageCacheEvent.loading(downloadProgress: $downloadProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality()
                .equals(other.downloadProgress, downloadProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(downloadProgress));

  @JsonKey(ignore: true)
  @override
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() cache,
    required TResult Function(DownloadProgress downloadProgress) loading,
    required TResult Function(FileInfo fileInfo) ready,
  }) {
    return loading(downloadProgress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? cache,
    TResult Function(DownloadProgress downloadProgress)? loading,
    TResult Function(FileInfo fileInfo)? ready,
  }) {
    return loading?.call(downloadProgress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? cache,
    TResult Function(DownloadProgress downloadProgress)? loading,
    TResult Function(FileInfo fileInfo)? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(downloadProgress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Cache value) cache,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Ready value) ready,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Cache value)? cache,
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Cache value)? cache,
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FileMessageCacheEvent {
  const factory _Loading(final DownloadProgress downloadProgress) = _$_Loading;

  DownloadProgress get downloadProgress;
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReadyCopyWith<$Res> {
  factory _$$_ReadyCopyWith(_$_Ready value, $Res Function(_$_Ready) then) =
      __$$_ReadyCopyWithImpl<$Res>;
  $Res call({FileInfo fileInfo});
}

/// @nodoc
class __$$_ReadyCopyWithImpl<$Res>
    extends _$FileMessageCacheEventCopyWithImpl<$Res>
    implements _$$_ReadyCopyWith<$Res> {
  __$$_ReadyCopyWithImpl(_$_Ready _value, $Res Function(_$_Ready) _then)
      : super(_value, (v) => _then(v as _$_Ready));

  @override
  _$_Ready get _value => super._value as _$_Ready;

  @override
  $Res call({
    Object? fileInfo = freezed,
  }) {
    return _then(_$_Ready(
      fileInfo == freezed
          ? _value.fileInfo
          : fileInfo // ignore: cast_nullable_to_non_nullable
              as FileInfo,
    ));
  }
}

/// @nodoc

class _$_Ready implements _Ready {
  const _$_Ready(this.fileInfo);

  @override
  final FileInfo fileInfo;

  @override
  String toString() {
    return 'FileMessageCacheEvent.ready(fileInfo: $fileInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ready &&
            const DeepCollectionEquality().equals(other.fileInfo, fileInfo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(fileInfo));

  @JsonKey(ignore: true)
  @override
  _$$_ReadyCopyWith<_$_Ready> get copyWith =>
      __$$_ReadyCopyWithImpl<_$_Ready>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() cache,
    required TResult Function(DownloadProgress downloadProgress) loading,
    required TResult Function(FileInfo fileInfo) ready,
  }) {
    return ready(fileInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? cache,
    TResult Function(DownloadProgress downloadProgress)? loading,
    TResult Function(FileInfo fileInfo)? ready,
  }) {
    return ready?.call(fileInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? cache,
    TResult Function(DownloadProgress downloadProgress)? loading,
    TResult Function(FileInfo fileInfo)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(fileInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Cache value) cache,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Ready value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Cache value)? cache,
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Cache value)? cache,
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements FileMessageCacheEvent {
  const factory _Ready(final FileInfo fileInfo) = _$_Ready;

  FileInfo get fileInfo;
  @JsonKey(ignore: true)
  _$$_ReadyCopyWith<_$_Ready> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FileMessageCacheState {
  StateStatus get status => throw _privateConstructorUsedError;
  double? get progress => throw _privateConstructorUsedError;
  String? get localFilePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileMessageCacheStateCopyWith<FileMessageCacheState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileMessageCacheStateCopyWith<$Res> {
  factory $FileMessageCacheStateCopyWith(FileMessageCacheState value,
          $Res Function(FileMessageCacheState) then) =
      _$FileMessageCacheStateCopyWithImpl<$Res>;
  $Res call({StateStatus status, double? progress, String? localFilePath});

  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$FileMessageCacheStateCopyWithImpl<$Res>
    implements $FileMessageCacheStateCopyWith<$Res> {
  _$FileMessageCacheStateCopyWithImpl(this._value, this._then);

  final FileMessageCacheState _value;
  // ignore: unused_field
  final $Res Function(FileMessageCacheState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? progress = freezed,
    Object? localFilePath = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double?,
      localFilePath: localFilePath == freezed
          ? _value.localFilePath
          : localFilePath // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_FileMessageCacheStateCopyWith<$Res>
    implements $FileMessageCacheStateCopyWith<$Res> {
  factory _$$_FileMessageCacheStateCopyWith(_$_FileMessageCacheState value,
          $Res Function(_$_FileMessageCacheState) then) =
      __$$_FileMessageCacheStateCopyWithImpl<$Res>;
  @override
  $Res call({StateStatus status, double? progress, String? localFilePath});

  @override
  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_FileMessageCacheStateCopyWithImpl<$Res>
    extends _$FileMessageCacheStateCopyWithImpl<$Res>
    implements _$$_FileMessageCacheStateCopyWith<$Res> {
  __$$_FileMessageCacheStateCopyWithImpl(_$_FileMessageCacheState _value,
      $Res Function(_$_FileMessageCacheState) _then)
      : super(_value, (v) => _then(v as _$_FileMessageCacheState));

  @override
  _$_FileMessageCacheState get _value =>
      super._value as _$_FileMessageCacheState;

  @override
  $Res call({
    Object? status = freezed,
    Object? progress = freezed,
    Object? localFilePath = freezed,
  }) {
    return _then(_$_FileMessageCacheState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double?,
      localFilePath: localFilePath == freezed
          ? _value.localFilePath
          : localFilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FileMessageCacheState implements _FileMessageCacheState {
  const _$_FileMessageCacheState(
      {this.status = const StateStatus(), this.progress, this.localFilePath});

  @override
  @JsonKey()
  final StateStatus status;
  @override
  final double? progress;
  @override
  final String? localFilePath;

  @override
  String toString() {
    return 'FileMessageCacheState(status: $status, progress: $progress, localFilePath: $localFilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FileMessageCacheState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.progress, progress) &&
            const DeepCollectionEquality()
                .equals(other.localFilePath, localFilePath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(progress),
      const DeepCollectionEquality().hash(localFilePath));

  @JsonKey(ignore: true)
  @override
  _$$_FileMessageCacheStateCopyWith<_$_FileMessageCacheState> get copyWith =>
      __$$_FileMessageCacheStateCopyWithImpl<_$_FileMessageCacheState>(
          this, _$identity);
}

abstract class _FileMessageCacheState implements FileMessageCacheState {
  const factory _FileMessageCacheState(
      {final StateStatus status,
      final double? progress,
      final String? localFilePath}) = _$_FileMessageCacheState;

  @override
  StateStatus get status;
  @override
  double? get progress;
  @override
  String? get localFilePath;
  @override
  @JsonKey(ignore: true)
  _$$_FileMessageCacheStateCopyWith<_$_FileMessageCacheState> get copyWith =>
      throw _privateConstructorUsedError;
}
