// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'section_with_documents.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SectionWithDocuments _$SectionWithDocumentsFromJson(Map<String, dynamic> json) {
  return _SectionWithDocuments.fromJson(json);
}

/// @nodoc
mixin _$SectionWithDocuments {
  Section get section => throw _privateConstructorUsedError;
  List<Document> get documents => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionWithDocumentsCopyWith<SectionWithDocuments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionWithDocumentsCopyWith<$Res> {
  factory $SectionWithDocumentsCopyWith(SectionWithDocuments value,
          $Res Function(SectionWithDocuments) then) =
      _$SectionWithDocumentsCopyWithImpl<$Res>;
  $Res call({Section section, List<Document> documents});

  $SectionCopyWith<$Res> get section;
}

/// @nodoc
class _$SectionWithDocumentsCopyWithImpl<$Res>
    implements $SectionWithDocumentsCopyWith<$Res> {
  _$SectionWithDocumentsCopyWithImpl(this._value, this._then);

  final SectionWithDocuments _value;
  // ignore: unused_field
  final $Res Function(SectionWithDocuments) _then;

  @override
  $Res call({
    Object? section = freezed,
    Object? documents = freezed,
  }) {
    return _then(_value.copyWith(
      section: section == freezed
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as Section,
      documents: documents == freezed
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
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
abstract class _$$_SectionWithDocumentsCopyWith<$Res>
    implements $SectionWithDocumentsCopyWith<$Res> {
  factory _$$_SectionWithDocumentsCopyWith(_$_SectionWithDocuments value,
          $Res Function(_$_SectionWithDocuments) then) =
      __$$_SectionWithDocumentsCopyWithImpl<$Res>;
  @override
  $Res call({Section section, List<Document> documents});

  @override
  $SectionCopyWith<$Res> get section;
}

/// @nodoc
class __$$_SectionWithDocumentsCopyWithImpl<$Res>
    extends _$SectionWithDocumentsCopyWithImpl<$Res>
    implements _$$_SectionWithDocumentsCopyWith<$Res> {
  __$$_SectionWithDocumentsCopyWithImpl(_$_SectionWithDocuments _value,
      $Res Function(_$_SectionWithDocuments) _then)
      : super(_value, (v) => _then(v as _$_SectionWithDocuments));

  @override
  _$_SectionWithDocuments get _value => super._value as _$_SectionWithDocuments;

  @override
  $Res call({
    Object? section = freezed,
    Object? documents = freezed,
  }) {
    return _then(_$_SectionWithDocuments(
      section: section == freezed
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as Section,
      documents: documents == freezed
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SectionWithDocuments implements _SectionWithDocuments {
  _$_SectionWithDocuments(
      {required this.section, final List<Document> documents = const []})
      : _documents = documents;

  factory _$_SectionWithDocuments.fromJson(Map<String, dynamic> json) =>
      _$$_SectionWithDocumentsFromJson(json);

  @override
  final Section section;
  final List<Document> _documents;
  @override
  @JsonKey()
  List<Document> get documents {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  String toString() {
    return 'SectionWithDocuments(section: $section, documents: $documents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SectionWithDocuments &&
            const DeepCollectionEquality().equals(other.section, section) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(section),
      const DeepCollectionEquality().hash(_documents));

  @JsonKey(ignore: true)
  @override
  _$$_SectionWithDocumentsCopyWith<_$_SectionWithDocuments> get copyWith =>
      __$$_SectionWithDocumentsCopyWithImpl<_$_SectionWithDocuments>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SectionWithDocumentsToJson(
      this,
    );
  }
}

abstract class _SectionWithDocuments implements SectionWithDocuments {
  factory _SectionWithDocuments(
      {required final Section section,
      final List<Document> documents}) = _$_SectionWithDocuments;

  factory _SectionWithDocuments.fromJson(Map<String, dynamic> json) =
      _$_SectionWithDocuments.fromJson;

  @override
  Section get section;
  @override
  List<Document> get documents;
  @override
  @JsonKey(ignore: true)
  _$$_SectionWithDocumentsCopyWith<_$_SectionWithDocuments> get copyWith =>
      throw _privateConstructorUsedError;
}
