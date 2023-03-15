// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'section_document_editor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SectionDocumentEditorState {
  StateStatus get status => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SectionDocumentEditorStateCopyWith<SectionDocumentEditorState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionDocumentEditorStateCopyWith<$Res> {
  factory $SectionDocumentEditorStateCopyWith(SectionDocumentEditorState value,
          $Res Function(SectionDocumentEditorState) then) =
      _$SectionDocumentEditorStateCopyWithImpl<$Res>;
  $Res call({StateStatus status, String value});

  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$SectionDocumentEditorStateCopyWithImpl<$Res>
    implements $SectionDocumentEditorStateCopyWith<$Res> {
  _$SectionDocumentEditorStateCopyWithImpl(this._value, this._then);

  final SectionDocumentEditorState _value;
  // ignore: unused_field
  final $Res Function(SectionDocumentEditorState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_SectionDocumentEditorStateCopyWith<$Res>
    implements $SectionDocumentEditorStateCopyWith<$Res> {
  factory _$$_SectionDocumentEditorStateCopyWith(
          _$_SectionDocumentEditorState value,
          $Res Function(_$_SectionDocumentEditorState) then) =
      __$$_SectionDocumentEditorStateCopyWithImpl<$Res>;
  @override
  $Res call({StateStatus status, String value});

  @override
  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_SectionDocumentEditorStateCopyWithImpl<$Res>
    extends _$SectionDocumentEditorStateCopyWithImpl<$Res>
    implements _$$_SectionDocumentEditorStateCopyWith<$Res> {
  __$$_SectionDocumentEditorStateCopyWithImpl(
      _$_SectionDocumentEditorState _value,
      $Res Function(_$_SectionDocumentEditorState) _then)
      : super(_value, (v) => _then(v as _$_SectionDocumentEditorState));

  @override
  _$_SectionDocumentEditorState get _value =>
      super._value as _$_SectionDocumentEditorState;

  @override
  $Res call({
    Object? status = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_SectionDocumentEditorState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SectionDocumentEditorState implements _SectionDocumentEditorState {
  const _$_SectionDocumentEditorState(
      {this.status = const StateStatus(), required this.value});

  @override
  @JsonKey()
  final StateStatus status;
  @override
  final String value;

  @override
  String toString() {
    return 'SectionDocumentEditorState(status: $status, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SectionDocumentEditorState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_SectionDocumentEditorStateCopyWith<_$_SectionDocumentEditorState>
      get copyWith => __$$_SectionDocumentEditorStateCopyWithImpl<
          _$_SectionDocumentEditorState>(this, _$identity);
}

abstract class _SectionDocumentEditorState
    implements SectionDocumentEditorState {
  const factory _SectionDocumentEditorState(
      {final StateStatus status,
      required final String value}) = _$_SectionDocumentEditorState;

  @override
  StateStatus get status;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_SectionDocumentEditorStateCopyWith<_$_SectionDocumentEditorState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SectionDocumentEditorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) setValue,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? setValue,
    TResult Function()? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? setValue,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetValue value) setValue,
    required TResult Function(_Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetValue value)? setValue,
    TResult Function(_Save value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetValue value)? setValue,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionDocumentEditorEventCopyWith<$Res> {
  factory $SectionDocumentEditorEventCopyWith(SectionDocumentEditorEvent value,
          $Res Function(SectionDocumentEditorEvent) then) =
      _$SectionDocumentEditorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SectionDocumentEditorEventCopyWithImpl<$Res>
    implements $SectionDocumentEditorEventCopyWith<$Res> {
  _$SectionDocumentEditorEventCopyWithImpl(this._value, this._then);

  final SectionDocumentEditorEvent _value;
  // ignore: unused_field
  final $Res Function(SectionDocumentEditorEvent) _then;
}

/// @nodoc
abstract class _$$_SetValueCopyWith<$Res> {
  factory _$$_SetValueCopyWith(
          _$_SetValue value, $Res Function(_$_SetValue) then) =
      __$$_SetValueCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$_SetValueCopyWithImpl<$Res>
    extends _$SectionDocumentEditorEventCopyWithImpl<$Res>
    implements _$$_SetValueCopyWith<$Res> {
  __$$_SetValueCopyWithImpl(
      _$_SetValue _value, $Res Function(_$_SetValue) _then)
      : super(_value, (v) => _then(v as _$_SetValue));

  @override
  _$_SetValue get _value => super._value as _$_SetValue;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_SetValue(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetValue implements _SetValue {
  const _$_SetValue(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'SectionDocumentEditorEvent.setValue(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetValue &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_SetValueCopyWith<_$_SetValue> get copyWith =>
      __$$_SetValueCopyWithImpl<_$_SetValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) setValue,
    required TResult Function() save,
  }) {
    return setValue(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? setValue,
    TResult Function()? save,
  }) {
    return setValue?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? setValue,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (setValue != null) {
      return setValue(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetValue value) setValue,
    required TResult Function(_Save value) save,
  }) {
    return setValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetValue value)? setValue,
    TResult Function(_Save value)? save,
  }) {
    return setValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetValue value)? setValue,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (setValue != null) {
      return setValue(this);
    }
    return orElse();
  }
}

abstract class _SetValue implements SectionDocumentEditorEvent {
  const factory _SetValue(final String value) = _$_SetValue;

  String get value;
  @JsonKey(ignore: true)
  _$$_SetValueCopyWith<_$_SetValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveCopyWith<$Res> {
  factory _$$_SaveCopyWith(_$_Save value, $Res Function(_$_Save) then) =
      __$$_SaveCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveCopyWithImpl<$Res>
    extends _$SectionDocumentEditorEventCopyWithImpl<$Res>
    implements _$$_SaveCopyWith<$Res> {
  __$$_SaveCopyWithImpl(_$_Save _value, $Res Function(_$_Save) _then)
      : super(_value, (v) => _then(v as _$_Save));

  @override
  _$_Save get _value => super._value as _$_Save;
}

/// @nodoc

class _$_Save implements _Save {
  const _$_Save();

  @override
  String toString() {
    return 'SectionDocumentEditorEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Save);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) setValue,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? setValue,
    TResult Function()? save,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? setValue,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetValue value) setValue,
    required TResult Function(_Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetValue value)? setValue,
    TResult Function(_Save value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetValue value)? setValue,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements SectionDocumentEditorEvent {
  const factory _Save() = _$_Save;
}
