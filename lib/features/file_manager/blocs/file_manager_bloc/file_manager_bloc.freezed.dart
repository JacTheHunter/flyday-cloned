// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file_manager_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FileManagerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSections,
    required TResult Function(bool? more) fetchDocuments,
    required TResult Function() toggleSelectionMode,
    required TResult Function(int id) selectDocument,
    required TResult Function() unselectAll,
    required TResult Function(Section section) addSection,
    required TResult Function(Document document) addDocument,
    required TResult Function(int sectionId) deleteSection,
    required TResult Function(int documentId) deleteDocument,
    required TResult Function(int sectionId, List<String> pathes)
        uploadDocuments,
    required TResult Function(int sectionId, List<FileNameWithFileBytes> files)
        uploadDocumentsFromWeb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSections value) fetchSections,
    required TResult Function(_FetchDocuments value) fetchDocuments,
    required TResult Function(_ToggleSelectionMode value) toggleSelectionMode,
    required TResult Function(_SelectDocument value) selectDocument,
    required TResult Function(_UnselectAllDocuments value) unselectAll,
    required TResult Function(_AddSection value) addSection,
    required TResult Function(_AddDocument value) addDocument,
    required TResult Function(_DeleteSection value) deleteSection,
    required TResult Function(_DeleteDocument value) deleteDocument,
    required TResult Function(_UploadDocuments value) uploadDocuments,
    required TResult Function(_UploadDocumentsFromWeb value)
        uploadDocumentsFromWeb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileManagerEventCopyWith<$Res> {
  factory $FileManagerEventCopyWith(
          FileManagerEvent value, $Res Function(FileManagerEvent) then) =
      _$FileManagerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileManagerEventCopyWithImpl<$Res>
    implements $FileManagerEventCopyWith<$Res> {
  _$FileManagerEventCopyWithImpl(this._value, this._then);

  final FileManagerEvent _value;
  // ignore: unused_field
  final $Res Function(FileManagerEvent) _then;
}

/// @nodoc
abstract class _$$_FetchSectionsCopyWith<$Res> {
  factory _$$_FetchSectionsCopyWith(
          _$_FetchSections value, $Res Function(_$_FetchSections) then) =
      __$$_FetchSectionsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchSectionsCopyWithImpl<$Res>
    extends _$FileManagerEventCopyWithImpl<$Res>
    implements _$$_FetchSectionsCopyWith<$Res> {
  __$$_FetchSectionsCopyWithImpl(
      _$_FetchSections _value, $Res Function(_$_FetchSections) _then)
      : super(_value, (v) => _then(v as _$_FetchSections));

  @override
  _$_FetchSections get _value => super._value as _$_FetchSections;
}

/// @nodoc

class _$_FetchSections implements _FetchSections {
  const _$_FetchSections();

  @override
  String toString() {
    return 'FileManagerEvent.fetchSections()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchSections);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSections,
    required TResult Function(bool? more) fetchDocuments,
    required TResult Function() toggleSelectionMode,
    required TResult Function(int id) selectDocument,
    required TResult Function() unselectAll,
    required TResult Function(Section section) addSection,
    required TResult Function(Document document) addDocument,
    required TResult Function(int sectionId) deleteSection,
    required TResult Function(int documentId) deleteDocument,
    required TResult Function(int sectionId, List<String> pathes)
        uploadDocuments,
    required TResult Function(int sectionId, List<FileNameWithFileBytes> files)
        uploadDocumentsFromWeb,
  }) {
    return fetchSections();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
  }) {
    return fetchSections?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
    required TResult orElse(),
  }) {
    if (fetchSections != null) {
      return fetchSections();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSections value) fetchSections,
    required TResult Function(_FetchDocuments value) fetchDocuments,
    required TResult Function(_ToggleSelectionMode value) toggleSelectionMode,
    required TResult Function(_SelectDocument value) selectDocument,
    required TResult Function(_UnselectAllDocuments value) unselectAll,
    required TResult Function(_AddSection value) addSection,
    required TResult Function(_AddDocument value) addDocument,
    required TResult Function(_DeleteSection value) deleteSection,
    required TResult Function(_DeleteDocument value) deleteDocument,
    required TResult Function(_UploadDocuments value) uploadDocuments,
    required TResult Function(_UploadDocumentsFromWeb value)
        uploadDocumentsFromWeb,
  }) {
    return fetchSections(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
  }) {
    return fetchSections?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
    required TResult orElse(),
  }) {
    if (fetchSections != null) {
      return fetchSections(this);
    }
    return orElse();
  }
}

abstract class _FetchSections implements FileManagerEvent {
  const factory _FetchSections() = _$_FetchSections;
}

/// @nodoc
abstract class _$$_FetchDocumentsCopyWith<$Res> {
  factory _$$_FetchDocumentsCopyWith(
          _$_FetchDocuments value, $Res Function(_$_FetchDocuments) then) =
      __$$_FetchDocumentsCopyWithImpl<$Res>;
  $Res call({bool? more});
}

/// @nodoc
class __$$_FetchDocumentsCopyWithImpl<$Res>
    extends _$FileManagerEventCopyWithImpl<$Res>
    implements _$$_FetchDocumentsCopyWith<$Res> {
  __$$_FetchDocumentsCopyWithImpl(
      _$_FetchDocuments _value, $Res Function(_$_FetchDocuments) _then)
      : super(_value, (v) => _then(v as _$_FetchDocuments));

  @override
  _$_FetchDocuments get _value => super._value as _$_FetchDocuments;

  @override
  $Res call({
    Object? more = freezed,
  }) {
    return _then(_$_FetchDocuments(
      more == freezed
          ? _value.more
          : more // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_FetchDocuments implements _FetchDocuments {
  const _$_FetchDocuments([this.more]);

  @override
  final bool? more;

  @override
  String toString() {
    return 'FileManagerEvent.fetchDocuments(more: $more)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchDocuments &&
            const DeepCollectionEquality().equals(other.more, more));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(more));

  @JsonKey(ignore: true)
  @override
  _$$_FetchDocumentsCopyWith<_$_FetchDocuments> get copyWith =>
      __$$_FetchDocumentsCopyWithImpl<_$_FetchDocuments>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSections,
    required TResult Function(bool? more) fetchDocuments,
    required TResult Function() toggleSelectionMode,
    required TResult Function(int id) selectDocument,
    required TResult Function() unselectAll,
    required TResult Function(Section section) addSection,
    required TResult Function(Document document) addDocument,
    required TResult Function(int sectionId) deleteSection,
    required TResult Function(int documentId) deleteDocument,
    required TResult Function(int sectionId, List<String> pathes)
        uploadDocuments,
    required TResult Function(int sectionId, List<FileNameWithFileBytes> files)
        uploadDocumentsFromWeb,
  }) {
    return fetchDocuments(more);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
  }) {
    return fetchDocuments?.call(more);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
    required TResult orElse(),
  }) {
    if (fetchDocuments != null) {
      return fetchDocuments(more);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSections value) fetchSections,
    required TResult Function(_FetchDocuments value) fetchDocuments,
    required TResult Function(_ToggleSelectionMode value) toggleSelectionMode,
    required TResult Function(_SelectDocument value) selectDocument,
    required TResult Function(_UnselectAllDocuments value) unselectAll,
    required TResult Function(_AddSection value) addSection,
    required TResult Function(_AddDocument value) addDocument,
    required TResult Function(_DeleteSection value) deleteSection,
    required TResult Function(_DeleteDocument value) deleteDocument,
    required TResult Function(_UploadDocuments value) uploadDocuments,
    required TResult Function(_UploadDocumentsFromWeb value)
        uploadDocumentsFromWeb,
  }) {
    return fetchDocuments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
  }) {
    return fetchDocuments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
    required TResult orElse(),
  }) {
    if (fetchDocuments != null) {
      return fetchDocuments(this);
    }
    return orElse();
  }
}

abstract class _FetchDocuments implements FileManagerEvent {
  const factory _FetchDocuments([final bool? more]) = _$_FetchDocuments;

  bool? get more;
  @JsonKey(ignore: true)
  _$$_FetchDocumentsCopyWith<_$_FetchDocuments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ToggleSelectionModeCopyWith<$Res> {
  factory _$$_ToggleSelectionModeCopyWith(_$_ToggleSelectionMode value,
          $Res Function(_$_ToggleSelectionMode) then) =
      __$$_ToggleSelectionModeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ToggleSelectionModeCopyWithImpl<$Res>
    extends _$FileManagerEventCopyWithImpl<$Res>
    implements _$$_ToggleSelectionModeCopyWith<$Res> {
  __$$_ToggleSelectionModeCopyWithImpl(_$_ToggleSelectionMode _value,
      $Res Function(_$_ToggleSelectionMode) _then)
      : super(_value, (v) => _then(v as _$_ToggleSelectionMode));

  @override
  _$_ToggleSelectionMode get _value => super._value as _$_ToggleSelectionMode;
}

/// @nodoc

class _$_ToggleSelectionMode implements _ToggleSelectionMode {
  const _$_ToggleSelectionMode();

  @override
  String toString() {
    return 'FileManagerEvent.toggleSelectionMode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ToggleSelectionMode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSections,
    required TResult Function(bool? more) fetchDocuments,
    required TResult Function() toggleSelectionMode,
    required TResult Function(int id) selectDocument,
    required TResult Function() unselectAll,
    required TResult Function(Section section) addSection,
    required TResult Function(Document document) addDocument,
    required TResult Function(int sectionId) deleteSection,
    required TResult Function(int documentId) deleteDocument,
    required TResult Function(int sectionId, List<String> pathes)
        uploadDocuments,
    required TResult Function(int sectionId, List<FileNameWithFileBytes> files)
        uploadDocumentsFromWeb,
  }) {
    return toggleSelectionMode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
  }) {
    return toggleSelectionMode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
    required TResult orElse(),
  }) {
    if (toggleSelectionMode != null) {
      return toggleSelectionMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSections value) fetchSections,
    required TResult Function(_FetchDocuments value) fetchDocuments,
    required TResult Function(_ToggleSelectionMode value) toggleSelectionMode,
    required TResult Function(_SelectDocument value) selectDocument,
    required TResult Function(_UnselectAllDocuments value) unselectAll,
    required TResult Function(_AddSection value) addSection,
    required TResult Function(_AddDocument value) addDocument,
    required TResult Function(_DeleteSection value) deleteSection,
    required TResult Function(_DeleteDocument value) deleteDocument,
    required TResult Function(_UploadDocuments value) uploadDocuments,
    required TResult Function(_UploadDocumentsFromWeb value)
        uploadDocumentsFromWeb,
  }) {
    return toggleSelectionMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
  }) {
    return toggleSelectionMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
    required TResult orElse(),
  }) {
    if (toggleSelectionMode != null) {
      return toggleSelectionMode(this);
    }
    return orElse();
  }
}

abstract class _ToggleSelectionMode implements FileManagerEvent {
  const factory _ToggleSelectionMode() = _$_ToggleSelectionMode;
}

/// @nodoc
abstract class _$$_SelectDocumentCopyWith<$Res> {
  factory _$$_SelectDocumentCopyWith(
          _$_SelectDocument value, $Res Function(_$_SelectDocument) then) =
      __$$_SelectDocumentCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$$_SelectDocumentCopyWithImpl<$Res>
    extends _$FileManagerEventCopyWithImpl<$Res>
    implements _$$_SelectDocumentCopyWith<$Res> {
  __$$_SelectDocumentCopyWithImpl(
      _$_SelectDocument _value, $Res Function(_$_SelectDocument) _then)
      : super(_value, (v) => _then(v as _$_SelectDocument));

  @override
  _$_SelectDocument get _value => super._value as _$_SelectDocument;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_SelectDocument(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectDocument implements _SelectDocument {
  const _$_SelectDocument(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'FileManagerEvent.selectDocument(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectDocument &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_SelectDocumentCopyWith<_$_SelectDocument> get copyWith =>
      __$$_SelectDocumentCopyWithImpl<_$_SelectDocument>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSections,
    required TResult Function(bool? more) fetchDocuments,
    required TResult Function() toggleSelectionMode,
    required TResult Function(int id) selectDocument,
    required TResult Function() unselectAll,
    required TResult Function(Section section) addSection,
    required TResult Function(Document document) addDocument,
    required TResult Function(int sectionId) deleteSection,
    required TResult Function(int documentId) deleteDocument,
    required TResult Function(int sectionId, List<String> pathes)
        uploadDocuments,
    required TResult Function(int sectionId, List<FileNameWithFileBytes> files)
        uploadDocumentsFromWeb,
  }) {
    return selectDocument(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
  }) {
    return selectDocument?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
    required TResult orElse(),
  }) {
    if (selectDocument != null) {
      return selectDocument(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSections value) fetchSections,
    required TResult Function(_FetchDocuments value) fetchDocuments,
    required TResult Function(_ToggleSelectionMode value) toggleSelectionMode,
    required TResult Function(_SelectDocument value) selectDocument,
    required TResult Function(_UnselectAllDocuments value) unselectAll,
    required TResult Function(_AddSection value) addSection,
    required TResult Function(_AddDocument value) addDocument,
    required TResult Function(_DeleteSection value) deleteSection,
    required TResult Function(_DeleteDocument value) deleteDocument,
    required TResult Function(_UploadDocuments value) uploadDocuments,
    required TResult Function(_UploadDocumentsFromWeb value)
        uploadDocumentsFromWeb,
  }) {
    return selectDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
  }) {
    return selectDocument?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
    required TResult orElse(),
  }) {
    if (selectDocument != null) {
      return selectDocument(this);
    }
    return orElse();
  }
}

abstract class _SelectDocument implements FileManagerEvent {
  const factory _SelectDocument(final int id) = _$_SelectDocument;

  int get id;
  @JsonKey(ignore: true)
  _$$_SelectDocumentCopyWith<_$_SelectDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnselectAllDocumentsCopyWith<$Res> {
  factory _$$_UnselectAllDocumentsCopyWith(_$_UnselectAllDocuments value,
          $Res Function(_$_UnselectAllDocuments) then) =
      __$$_UnselectAllDocumentsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnselectAllDocumentsCopyWithImpl<$Res>
    extends _$FileManagerEventCopyWithImpl<$Res>
    implements _$$_UnselectAllDocumentsCopyWith<$Res> {
  __$$_UnselectAllDocumentsCopyWithImpl(_$_UnselectAllDocuments _value,
      $Res Function(_$_UnselectAllDocuments) _then)
      : super(_value, (v) => _then(v as _$_UnselectAllDocuments));

  @override
  _$_UnselectAllDocuments get _value => super._value as _$_UnselectAllDocuments;
}

/// @nodoc

class _$_UnselectAllDocuments implements _UnselectAllDocuments {
  const _$_UnselectAllDocuments();

  @override
  String toString() {
    return 'FileManagerEvent.unselectAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnselectAllDocuments);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSections,
    required TResult Function(bool? more) fetchDocuments,
    required TResult Function() toggleSelectionMode,
    required TResult Function(int id) selectDocument,
    required TResult Function() unselectAll,
    required TResult Function(Section section) addSection,
    required TResult Function(Document document) addDocument,
    required TResult Function(int sectionId) deleteSection,
    required TResult Function(int documentId) deleteDocument,
    required TResult Function(int sectionId, List<String> pathes)
        uploadDocuments,
    required TResult Function(int sectionId, List<FileNameWithFileBytes> files)
        uploadDocumentsFromWeb,
  }) {
    return unselectAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
  }) {
    return unselectAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
    required TResult orElse(),
  }) {
    if (unselectAll != null) {
      return unselectAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSections value) fetchSections,
    required TResult Function(_FetchDocuments value) fetchDocuments,
    required TResult Function(_ToggleSelectionMode value) toggleSelectionMode,
    required TResult Function(_SelectDocument value) selectDocument,
    required TResult Function(_UnselectAllDocuments value) unselectAll,
    required TResult Function(_AddSection value) addSection,
    required TResult Function(_AddDocument value) addDocument,
    required TResult Function(_DeleteSection value) deleteSection,
    required TResult Function(_DeleteDocument value) deleteDocument,
    required TResult Function(_UploadDocuments value) uploadDocuments,
    required TResult Function(_UploadDocumentsFromWeb value)
        uploadDocumentsFromWeb,
  }) {
    return unselectAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
  }) {
    return unselectAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
    required TResult orElse(),
  }) {
    if (unselectAll != null) {
      return unselectAll(this);
    }
    return orElse();
  }
}

abstract class _UnselectAllDocuments implements FileManagerEvent {
  const factory _UnselectAllDocuments() = _$_UnselectAllDocuments;
}

/// @nodoc
abstract class _$$_AddSectionCopyWith<$Res> {
  factory _$$_AddSectionCopyWith(
          _$_AddSection value, $Res Function(_$_AddSection) then) =
      __$$_AddSectionCopyWithImpl<$Res>;
  $Res call({Section section});

  $SectionCopyWith<$Res> get section;
}

/// @nodoc
class __$$_AddSectionCopyWithImpl<$Res>
    extends _$FileManagerEventCopyWithImpl<$Res>
    implements _$$_AddSectionCopyWith<$Res> {
  __$$_AddSectionCopyWithImpl(
      _$_AddSection _value, $Res Function(_$_AddSection) _then)
      : super(_value, (v) => _then(v as _$_AddSection));

  @override
  _$_AddSection get _value => super._value as _$_AddSection;

  @override
  $Res call({
    Object? section = freezed,
  }) {
    return _then(_$_AddSection(
      section == freezed
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as Section,
    ));
  }

  @override
  $SectionCopyWith<$Res> get section {
    return $SectionCopyWith<$Res>(_value.section, (value) {
      return _then(_value.copyWith(section: value));
    });
  }
}

/// @nodoc

class _$_AddSection implements _AddSection {
  const _$_AddSection(this.section);

  @override
  final Section section;

  @override
  String toString() {
    return 'FileManagerEvent.addSection(section: $section)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddSection &&
            const DeepCollectionEquality().equals(other.section, section));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(section));

  @JsonKey(ignore: true)
  @override
  _$$_AddSectionCopyWith<_$_AddSection> get copyWith =>
      __$$_AddSectionCopyWithImpl<_$_AddSection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSections,
    required TResult Function(bool? more) fetchDocuments,
    required TResult Function() toggleSelectionMode,
    required TResult Function(int id) selectDocument,
    required TResult Function() unselectAll,
    required TResult Function(Section section) addSection,
    required TResult Function(Document document) addDocument,
    required TResult Function(int sectionId) deleteSection,
    required TResult Function(int documentId) deleteDocument,
    required TResult Function(int sectionId, List<String> pathes)
        uploadDocuments,
    required TResult Function(int sectionId, List<FileNameWithFileBytes> files)
        uploadDocumentsFromWeb,
  }) {
    return addSection(section);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
  }) {
    return addSection?.call(section);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
    required TResult orElse(),
  }) {
    if (addSection != null) {
      return addSection(section);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSections value) fetchSections,
    required TResult Function(_FetchDocuments value) fetchDocuments,
    required TResult Function(_ToggleSelectionMode value) toggleSelectionMode,
    required TResult Function(_SelectDocument value) selectDocument,
    required TResult Function(_UnselectAllDocuments value) unselectAll,
    required TResult Function(_AddSection value) addSection,
    required TResult Function(_AddDocument value) addDocument,
    required TResult Function(_DeleteSection value) deleteSection,
    required TResult Function(_DeleteDocument value) deleteDocument,
    required TResult Function(_UploadDocuments value) uploadDocuments,
    required TResult Function(_UploadDocumentsFromWeb value)
        uploadDocumentsFromWeb,
  }) {
    return addSection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
  }) {
    return addSection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
    required TResult orElse(),
  }) {
    if (addSection != null) {
      return addSection(this);
    }
    return orElse();
  }
}

abstract class _AddSection implements FileManagerEvent {
  const factory _AddSection(final Section section) = _$_AddSection;

  Section get section;
  @JsonKey(ignore: true)
  _$$_AddSectionCopyWith<_$_AddSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddDocumentCopyWith<$Res> {
  factory _$$_AddDocumentCopyWith(
          _$_AddDocument value, $Res Function(_$_AddDocument) then) =
      __$$_AddDocumentCopyWithImpl<$Res>;
  $Res call({Document document});

  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class __$$_AddDocumentCopyWithImpl<$Res>
    extends _$FileManagerEventCopyWithImpl<$Res>
    implements _$$_AddDocumentCopyWith<$Res> {
  __$$_AddDocumentCopyWithImpl(
      _$_AddDocument _value, $Res Function(_$_AddDocument) _then)
      : super(_value, (v) => _then(v as _$_AddDocument));

  @override
  _$_AddDocument get _value => super._value as _$_AddDocument;

  @override
  $Res call({
    Object? document = freezed,
  }) {
    return _then(_$_AddDocument(
      document == freezed
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
    ));
  }

  @override
  $DocumentCopyWith<$Res> get document {
    return $DocumentCopyWith<$Res>(_value.document, (value) {
      return _then(_value.copyWith(document: value));
    });
  }
}

/// @nodoc

class _$_AddDocument implements _AddDocument {
  const _$_AddDocument(this.document);

  @override
  final Document document;

  @override
  String toString() {
    return 'FileManagerEvent.addDocument(document: $document)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddDocument &&
            const DeepCollectionEquality().equals(other.document, document));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(document));

  @JsonKey(ignore: true)
  @override
  _$$_AddDocumentCopyWith<_$_AddDocument> get copyWith =>
      __$$_AddDocumentCopyWithImpl<_$_AddDocument>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSections,
    required TResult Function(bool? more) fetchDocuments,
    required TResult Function() toggleSelectionMode,
    required TResult Function(int id) selectDocument,
    required TResult Function() unselectAll,
    required TResult Function(Section section) addSection,
    required TResult Function(Document document) addDocument,
    required TResult Function(int sectionId) deleteSection,
    required TResult Function(int documentId) deleteDocument,
    required TResult Function(int sectionId, List<String> pathes)
        uploadDocuments,
    required TResult Function(int sectionId, List<FileNameWithFileBytes> files)
        uploadDocumentsFromWeb,
  }) {
    return addDocument(document);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
  }) {
    return addDocument?.call(document);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
    required TResult orElse(),
  }) {
    if (addDocument != null) {
      return addDocument(document);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSections value) fetchSections,
    required TResult Function(_FetchDocuments value) fetchDocuments,
    required TResult Function(_ToggleSelectionMode value) toggleSelectionMode,
    required TResult Function(_SelectDocument value) selectDocument,
    required TResult Function(_UnselectAllDocuments value) unselectAll,
    required TResult Function(_AddSection value) addSection,
    required TResult Function(_AddDocument value) addDocument,
    required TResult Function(_DeleteSection value) deleteSection,
    required TResult Function(_DeleteDocument value) deleteDocument,
    required TResult Function(_UploadDocuments value) uploadDocuments,
    required TResult Function(_UploadDocumentsFromWeb value)
        uploadDocumentsFromWeb,
  }) {
    return addDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
  }) {
    return addDocument?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
    required TResult orElse(),
  }) {
    if (addDocument != null) {
      return addDocument(this);
    }
    return orElse();
  }
}

abstract class _AddDocument implements FileManagerEvent {
  const factory _AddDocument(final Document document) = _$_AddDocument;

  Document get document;
  @JsonKey(ignore: true)
  _$$_AddDocumentCopyWith<_$_AddDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteSectionCopyWith<$Res> {
  factory _$$_DeleteSectionCopyWith(
          _$_DeleteSection value, $Res Function(_$_DeleteSection) then) =
      __$$_DeleteSectionCopyWithImpl<$Res>;
  $Res call({int sectionId});
}

/// @nodoc
class __$$_DeleteSectionCopyWithImpl<$Res>
    extends _$FileManagerEventCopyWithImpl<$Res>
    implements _$$_DeleteSectionCopyWith<$Res> {
  __$$_DeleteSectionCopyWithImpl(
      _$_DeleteSection _value, $Res Function(_$_DeleteSection) _then)
      : super(_value, (v) => _then(v as _$_DeleteSection));

  @override
  _$_DeleteSection get _value => super._value as _$_DeleteSection;

  @override
  $Res call({
    Object? sectionId = freezed,
  }) {
    return _then(_$_DeleteSection(
      sectionId == freezed
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteSection implements _DeleteSection {
  const _$_DeleteSection(this.sectionId);

  @override
  final int sectionId;

  @override
  String toString() {
    return 'FileManagerEvent.deleteSection(sectionId: $sectionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteSection &&
            const DeepCollectionEquality().equals(other.sectionId, sectionId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(sectionId));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteSectionCopyWith<_$_DeleteSection> get copyWith =>
      __$$_DeleteSectionCopyWithImpl<_$_DeleteSection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSections,
    required TResult Function(bool? more) fetchDocuments,
    required TResult Function() toggleSelectionMode,
    required TResult Function(int id) selectDocument,
    required TResult Function() unselectAll,
    required TResult Function(Section section) addSection,
    required TResult Function(Document document) addDocument,
    required TResult Function(int sectionId) deleteSection,
    required TResult Function(int documentId) deleteDocument,
    required TResult Function(int sectionId, List<String> pathes)
        uploadDocuments,
    required TResult Function(int sectionId, List<FileNameWithFileBytes> files)
        uploadDocumentsFromWeb,
  }) {
    return deleteSection(sectionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
  }) {
    return deleteSection?.call(sectionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
    required TResult orElse(),
  }) {
    if (deleteSection != null) {
      return deleteSection(sectionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSections value) fetchSections,
    required TResult Function(_FetchDocuments value) fetchDocuments,
    required TResult Function(_ToggleSelectionMode value) toggleSelectionMode,
    required TResult Function(_SelectDocument value) selectDocument,
    required TResult Function(_UnselectAllDocuments value) unselectAll,
    required TResult Function(_AddSection value) addSection,
    required TResult Function(_AddDocument value) addDocument,
    required TResult Function(_DeleteSection value) deleteSection,
    required TResult Function(_DeleteDocument value) deleteDocument,
    required TResult Function(_UploadDocuments value) uploadDocuments,
    required TResult Function(_UploadDocumentsFromWeb value)
        uploadDocumentsFromWeb,
  }) {
    return deleteSection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
  }) {
    return deleteSection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
    required TResult orElse(),
  }) {
    if (deleteSection != null) {
      return deleteSection(this);
    }
    return orElse();
  }
}

abstract class _DeleteSection implements FileManagerEvent {
  const factory _DeleteSection(final int sectionId) = _$_DeleteSection;

  int get sectionId;
  @JsonKey(ignore: true)
  _$$_DeleteSectionCopyWith<_$_DeleteSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteDocumentCopyWith<$Res> {
  factory _$$_DeleteDocumentCopyWith(
          _$_DeleteDocument value, $Res Function(_$_DeleteDocument) then) =
      __$$_DeleteDocumentCopyWithImpl<$Res>;
  $Res call({int documentId});
}

/// @nodoc
class __$$_DeleteDocumentCopyWithImpl<$Res>
    extends _$FileManagerEventCopyWithImpl<$Res>
    implements _$$_DeleteDocumentCopyWith<$Res> {
  __$$_DeleteDocumentCopyWithImpl(
      _$_DeleteDocument _value, $Res Function(_$_DeleteDocument) _then)
      : super(_value, (v) => _then(v as _$_DeleteDocument));

  @override
  _$_DeleteDocument get _value => super._value as _$_DeleteDocument;

  @override
  $Res call({
    Object? documentId = freezed,
  }) {
    return _then(_$_DeleteDocument(
      documentId == freezed
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteDocument implements _DeleteDocument {
  const _$_DeleteDocument(this.documentId);

  @override
  final int documentId;

  @override
  String toString() {
    return 'FileManagerEvent.deleteDocument(documentId: $documentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteDocument &&
            const DeepCollectionEquality()
                .equals(other.documentId, documentId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(documentId));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteDocumentCopyWith<_$_DeleteDocument> get copyWith =>
      __$$_DeleteDocumentCopyWithImpl<_$_DeleteDocument>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSections,
    required TResult Function(bool? more) fetchDocuments,
    required TResult Function() toggleSelectionMode,
    required TResult Function(int id) selectDocument,
    required TResult Function() unselectAll,
    required TResult Function(Section section) addSection,
    required TResult Function(Document document) addDocument,
    required TResult Function(int sectionId) deleteSection,
    required TResult Function(int documentId) deleteDocument,
    required TResult Function(int sectionId, List<String> pathes)
        uploadDocuments,
    required TResult Function(int sectionId, List<FileNameWithFileBytes> files)
        uploadDocumentsFromWeb,
  }) {
    return deleteDocument(documentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
  }) {
    return deleteDocument?.call(documentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
    required TResult orElse(),
  }) {
    if (deleteDocument != null) {
      return deleteDocument(documentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSections value) fetchSections,
    required TResult Function(_FetchDocuments value) fetchDocuments,
    required TResult Function(_ToggleSelectionMode value) toggleSelectionMode,
    required TResult Function(_SelectDocument value) selectDocument,
    required TResult Function(_UnselectAllDocuments value) unselectAll,
    required TResult Function(_AddSection value) addSection,
    required TResult Function(_AddDocument value) addDocument,
    required TResult Function(_DeleteSection value) deleteSection,
    required TResult Function(_DeleteDocument value) deleteDocument,
    required TResult Function(_UploadDocuments value) uploadDocuments,
    required TResult Function(_UploadDocumentsFromWeb value)
        uploadDocumentsFromWeb,
  }) {
    return deleteDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
  }) {
    return deleteDocument?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
    required TResult orElse(),
  }) {
    if (deleteDocument != null) {
      return deleteDocument(this);
    }
    return orElse();
  }
}

abstract class _DeleteDocument implements FileManagerEvent {
  const factory _DeleteDocument(final int documentId) = _$_DeleteDocument;

  int get documentId;
  @JsonKey(ignore: true)
  _$$_DeleteDocumentCopyWith<_$_DeleteDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UploadDocumentsCopyWith<$Res> {
  factory _$$_UploadDocumentsCopyWith(
          _$_UploadDocuments value, $Res Function(_$_UploadDocuments) then) =
      __$$_UploadDocumentsCopyWithImpl<$Res>;
  $Res call({int sectionId, List<String> pathes});
}

/// @nodoc
class __$$_UploadDocumentsCopyWithImpl<$Res>
    extends _$FileManagerEventCopyWithImpl<$Res>
    implements _$$_UploadDocumentsCopyWith<$Res> {
  __$$_UploadDocumentsCopyWithImpl(
      _$_UploadDocuments _value, $Res Function(_$_UploadDocuments) _then)
      : super(_value, (v) => _then(v as _$_UploadDocuments));

  @override
  _$_UploadDocuments get _value => super._value as _$_UploadDocuments;

  @override
  $Res call({
    Object? sectionId = freezed,
    Object? pathes = freezed,
  }) {
    return _then(_$_UploadDocuments(
      sectionId == freezed
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as int,
      pathes == freezed
          ? _value._pathes
          : pathes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_UploadDocuments implements _UploadDocuments {
  const _$_UploadDocuments(this.sectionId, final List<String> pathes)
      : _pathes = pathes;

  @override
  final int sectionId;
  final List<String> _pathes;
  @override
  List<String> get pathes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pathes);
  }

  @override
  String toString() {
    return 'FileManagerEvent.uploadDocuments(sectionId: $sectionId, pathes: $pathes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadDocuments &&
            const DeepCollectionEquality().equals(other.sectionId, sectionId) &&
            const DeepCollectionEquality().equals(other._pathes, _pathes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sectionId),
      const DeepCollectionEquality().hash(_pathes));

  @JsonKey(ignore: true)
  @override
  _$$_UploadDocumentsCopyWith<_$_UploadDocuments> get copyWith =>
      __$$_UploadDocumentsCopyWithImpl<_$_UploadDocuments>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSections,
    required TResult Function(bool? more) fetchDocuments,
    required TResult Function() toggleSelectionMode,
    required TResult Function(int id) selectDocument,
    required TResult Function() unselectAll,
    required TResult Function(Section section) addSection,
    required TResult Function(Document document) addDocument,
    required TResult Function(int sectionId) deleteSection,
    required TResult Function(int documentId) deleteDocument,
    required TResult Function(int sectionId, List<String> pathes)
        uploadDocuments,
    required TResult Function(int sectionId, List<FileNameWithFileBytes> files)
        uploadDocumentsFromWeb,
  }) {
    return uploadDocuments(sectionId, pathes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
  }) {
    return uploadDocuments?.call(sectionId, pathes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
    required TResult orElse(),
  }) {
    if (uploadDocuments != null) {
      return uploadDocuments(sectionId, pathes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSections value) fetchSections,
    required TResult Function(_FetchDocuments value) fetchDocuments,
    required TResult Function(_ToggleSelectionMode value) toggleSelectionMode,
    required TResult Function(_SelectDocument value) selectDocument,
    required TResult Function(_UnselectAllDocuments value) unselectAll,
    required TResult Function(_AddSection value) addSection,
    required TResult Function(_AddDocument value) addDocument,
    required TResult Function(_DeleteSection value) deleteSection,
    required TResult Function(_DeleteDocument value) deleteDocument,
    required TResult Function(_UploadDocuments value) uploadDocuments,
    required TResult Function(_UploadDocumentsFromWeb value)
        uploadDocumentsFromWeb,
  }) {
    return uploadDocuments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
  }) {
    return uploadDocuments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
    required TResult orElse(),
  }) {
    if (uploadDocuments != null) {
      return uploadDocuments(this);
    }
    return orElse();
  }
}

abstract class _UploadDocuments implements FileManagerEvent {
  const factory _UploadDocuments(
      final int sectionId, final List<String> pathes) = _$_UploadDocuments;

  int get sectionId;
  List<String> get pathes;
  @JsonKey(ignore: true)
  _$$_UploadDocumentsCopyWith<_$_UploadDocuments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UploadDocumentsFromWebCopyWith<$Res> {
  factory _$$_UploadDocumentsFromWebCopyWith(_$_UploadDocumentsFromWeb value,
          $Res Function(_$_UploadDocumentsFromWeb) then) =
      __$$_UploadDocumentsFromWebCopyWithImpl<$Res>;
  $Res call({int sectionId, List<FileNameWithFileBytes> files});
}

/// @nodoc
class __$$_UploadDocumentsFromWebCopyWithImpl<$Res>
    extends _$FileManagerEventCopyWithImpl<$Res>
    implements _$$_UploadDocumentsFromWebCopyWith<$Res> {
  __$$_UploadDocumentsFromWebCopyWithImpl(_$_UploadDocumentsFromWeb _value,
      $Res Function(_$_UploadDocumentsFromWeb) _then)
      : super(_value, (v) => _then(v as _$_UploadDocumentsFromWeb));

  @override
  _$_UploadDocumentsFromWeb get _value =>
      super._value as _$_UploadDocumentsFromWeb;

  @override
  $Res call({
    Object? sectionId = freezed,
    Object? files = freezed,
  }) {
    return _then(_$_UploadDocumentsFromWeb(
      sectionId == freezed
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as int,
      files == freezed
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FileNameWithFileBytes>,
    ));
  }
}

/// @nodoc

class _$_UploadDocumentsFromWeb implements _UploadDocumentsFromWeb {
  const _$_UploadDocumentsFromWeb(
      this.sectionId, final List<FileNameWithFileBytes> files)
      : _files = files;

  @override
  final int sectionId;
  final List<FileNameWithFileBytes> _files;
  @override
  List<FileNameWithFileBytes> get files {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  String toString() {
    return 'FileManagerEvent.uploadDocumentsFromWeb(sectionId: $sectionId, files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadDocumentsFromWeb &&
            const DeepCollectionEquality().equals(other.sectionId, sectionId) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sectionId),
      const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  _$$_UploadDocumentsFromWebCopyWith<_$_UploadDocumentsFromWeb> get copyWith =>
      __$$_UploadDocumentsFromWebCopyWithImpl<_$_UploadDocumentsFromWeb>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSections,
    required TResult Function(bool? more) fetchDocuments,
    required TResult Function() toggleSelectionMode,
    required TResult Function(int id) selectDocument,
    required TResult Function() unselectAll,
    required TResult Function(Section section) addSection,
    required TResult Function(Document document) addDocument,
    required TResult Function(int sectionId) deleteSection,
    required TResult Function(int documentId) deleteDocument,
    required TResult Function(int sectionId, List<String> pathes)
        uploadDocuments,
    required TResult Function(int sectionId, List<FileNameWithFileBytes> files)
        uploadDocumentsFromWeb,
  }) {
    return uploadDocumentsFromWeb(sectionId, files);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
  }) {
    return uploadDocumentsFromWeb?.call(sectionId, files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSections,
    TResult Function(bool? more)? fetchDocuments,
    TResult Function()? toggleSelectionMode,
    TResult Function(int id)? selectDocument,
    TResult Function()? unselectAll,
    TResult Function(Section section)? addSection,
    TResult Function(Document document)? addDocument,
    TResult Function(int sectionId)? deleteSection,
    TResult Function(int documentId)? deleteDocument,
    TResult Function(int sectionId, List<String> pathes)? uploadDocuments,
    TResult Function(int sectionId, List<FileNameWithFileBytes> files)?
        uploadDocumentsFromWeb,
    required TResult orElse(),
  }) {
    if (uploadDocumentsFromWeb != null) {
      return uploadDocumentsFromWeb(sectionId, files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSections value) fetchSections,
    required TResult Function(_FetchDocuments value) fetchDocuments,
    required TResult Function(_ToggleSelectionMode value) toggleSelectionMode,
    required TResult Function(_SelectDocument value) selectDocument,
    required TResult Function(_UnselectAllDocuments value) unselectAll,
    required TResult Function(_AddSection value) addSection,
    required TResult Function(_AddDocument value) addDocument,
    required TResult Function(_DeleteSection value) deleteSection,
    required TResult Function(_DeleteDocument value) deleteDocument,
    required TResult Function(_UploadDocuments value) uploadDocuments,
    required TResult Function(_UploadDocumentsFromWeb value)
        uploadDocumentsFromWeb,
  }) {
    return uploadDocumentsFromWeb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
  }) {
    return uploadDocumentsFromWeb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSections value)? fetchSections,
    TResult Function(_FetchDocuments value)? fetchDocuments,
    TResult Function(_ToggleSelectionMode value)? toggleSelectionMode,
    TResult Function(_SelectDocument value)? selectDocument,
    TResult Function(_UnselectAllDocuments value)? unselectAll,
    TResult Function(_AddSection value)? addSection,
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_DeleteSection value)? deleteSection,
    TResult Function(_DeleteDocument value)? deleteDocument,
    TResult Function(_UploadDocuments value)? uploadDocuments,
    TResult Function(_UploadDocumentsFromWeb value)? uploadDocumentsFromWeb,
    required TResult orElse(),
  }) {
    if (uploadDocumentsFromWeb != null) {
      return uploadDocumentsFromWeb(this);
    }
    return orElse();
  }
}

abstract class _UploadDocumentsFromWeb implements FileManagerEvent {
  const factory _UploadDocumentsFromWeb(
          final int sectionId, final List<FileNameWithFileBytes> files) =
      _$_UploadDocumentsFromWeb;

  int get sectionId;
  List<FileNameWithFileBytes> get files;
  @JsonKey(ignore: true)
  _$$_UploadDocumentsFromWebCopyWith<_$_UploadDocumentsFromWeb> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FileManagerState {
  StateStatus get status => throw _privateConstructorUsedError;
  List<Section> get sections => throw _privateConstructorUsedError;
  List<Document> get documents => throw _privateConstructorUsedError;
  List<int> get selectedDocumentsIds => throw _privateConstructorUsedError;
  bool get selectionMode => throw _privateConstructorUsedError;
  bool get isSelectionModeAvailable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileManagerStateCopyWith<FileManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileManagerStateCopyWith<$Res> {
  factory $FileManagerStateCopyWith(
          FileManagerState value, $Res Function(FileManagerState) then) =
      _$FileManagerStateCopyWithImpl<$Res>;
  $Res call(
      {StateStatus status,
      List<Section> sections,
      List<Document> documents,
      List<int> selectedDocumentsIds,
      bool selectionMode,
      bool isSelectionModeAvailable});

  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$FileManagerStateCopyWithImpl<$Res>
    implements $FileManagerStateCopyWith<$Res> {
  _$FileManagerStateCopyWithImpl(this._value, this._then);

  final FileManagerState _value;
  // ignore: unused_field
  final $Res Function(FileManagerState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? sections = freezed,
    Object? documents = freezed,
    Object? selectedDocumentsIds = freezed,
    Object? selectionMode = freezed,
    Object? isSelectionModeAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      sections: sections == freezed
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>,
      documents: documents == freezed
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
      selectedDocumentsIds: selectedDocumentsIds == freezed
          ? _value.selectedDocumentsIds
          : selectedDocumentsIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectionMode: selectionMode == freezed
          ? _value.selectionMode
          : selectionMode // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelectionModeAvailable: isSelectionModeAvailable == freezed
          ? _value.isSelectionModeAvailable
          : isSelectionModeAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_FileManagerStateCopyWith<$Res>
    implements $FileManagerStateCopyWith<$Res> {
  factory _$$_FileManagerStateCopyWith(
          _$_FileManagerState value, $Res Function(_$_FileManagerState) then) =
      __$$_FileManagerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StateStatus status,
      List<Section> sections,
      List<Document> documents,
      List<int> selectedDocumentsIds,
      bool selectionMode,
      bool isSelectionModeAvailable});

  @override
  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_FileManagerStateCopyWithImpl<$Res>
    extends _$FileManagerStateCopyWithImpl<$Res>
    implements _$$_FileManagerStateCopyWith<$Res> {
  __$$_FileManagerStateCopyWithImpl(
      _$_FileManagerState _value, $Res Function(_$_FileManagerState) _then)
      : super(_value, (v) => _then(v as _$_FileManagerState));

  @override
  _$_FileManagerState get _value => super._value as _$_FileManagerState;

  @override
  $Res call({
    Object? status = freezed,
    Object? sections = freezed,
    Object? documents = freezed,
    Object? selectedDocumentsIds = freezed,
    Object? selectionMode = freezed,
    Object? isSelectionModeAvailable = freezed,
  }) {
    return _then(_$_FileManagerState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      sections: sections == freezed
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>,
      documents: documents == freezed
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
      selectedDocumentsIds: selectedDocumentsIds == freezed
          ? _value._selectedDocumentsIds
          : selectedDocumentsIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectionMode: selectionMode == freezed
          ? _value.selectionMode
          : selectionMode // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelectionModeAvailable: isSelectionModeAvailable == freezed
          ? _value.isSelectionModeAvailable
          : isSelectionModeAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FileManagerState extends _FileManagerState {
  const _$_FileManagerState(
      {this.status = const StateStatus(),
      final List<Section> sections = const [],
      final List<Document> documents = const [],
      final List<int> selectedDocumentsIds = const [],
      required this.selectionMode,
      required this.isSelectionModeAvailable})
      : _sections = sections,
        _documents = documents,
        _selectedDocumentsIds = selectedDocumentsIds,
        super._();

  @override
  @JsonKey()
  final StateStatus status;
  final List<Section> _sections;
  @override
  @JsonKey()
  List<Section> get sections {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  final List<Document> _documents;
  @override
  @JsonKey()
  List<Document> get documents {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  final List<int> _selectedDocumentsIds;
  @override
  @JsonKey()
  List<int> get selectedDocumentsIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedDocumentsIds);
  }

  @override
  final bool selectionMode;
  @override
  final bool isSelectionModeAvailable;

  @override
  String toString() {
    return 'FileManagerState(status: $status, sections: $sections, documents: $documents, selectedDocumentsIds: $selectedDocumentsIds, selectionMode: $selectionMode, isSelectionModeAvailable: $isSelectionModeAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FileManagerState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            const DeepCollectionEquality()
                .equals(other._selectedDocumentsIds, _selectedDocumentsIds) &&
            const DeepCollectionEquality()
                .equals(other.selectionMode, selectionMode) &&
            const DeepCollectionEquality().equals(
                other.isSelectionModeAvailable, isSelectionModeAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_sections),
      const DeepCollectionEquality().hash(_documents),
      const DeepCollectionEquality().hash(_selectedDocumentsIds),
      const DeepCollectionEquality().hash(selectionMode),
      const DeepCollectionEquality().hash(isSelectionModeAvailable));

  @JsonKey(ignore: true)
  @override
  _$$_FileManagerStateCopyWith<_$_FileManagerState> get copyWith =>
      __$$_FileManagerStateCopyWithImpl<_$_FileManagerState>(this, _$identity);
}

abstract class _FileManagerState extends FileManagerState {
  const factory _FileManagerState(
      {final StateStatus status,
      final List<Section> sections,
      final List<Document> documents,
      final List<int> selectedDocumentsIds,
      required final bool selectionMode,
      required final bool isSelectionModeAvailable}) = _$_FileManagerState;
  const _FileManagerState._() : super._();

  @override
  StateStatus get status;
  @override
  List<Section> get sections;
  @override
  List<Document> get documents;
  @override
  List<int> get selectedDocumentsIds;
  @override
  bool get selectionMode;
  @override
  bool get isSelectionModeAvailable;
  @override
  @JsonKey(ignore: true)
  _$$_FileManagerStateCopyWith<_$_FileManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}
