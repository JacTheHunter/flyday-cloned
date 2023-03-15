// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'local_images_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalImagesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetch,
    required TResult Function(int index) select,
    required TResult Function() sendSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(int index)? select,
    TResult Function()? sendSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(int index)? select,
    TResult Function()? sendSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Select value) select,
    required TResult Function(_SendSelected value) sendSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Select value)? select,
    TResult Function(_SendSelected value)? sendSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Select value)? select,
    TResult Function(_SendSelected value)? sendSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalImagesEventCopyWith<$Res> {
  factory $LocalImagesEventCopyWith(
          LocalImagesEvent value, $Res Function(LocalImagesEvent) then) =
      _$LocalImagesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocalImagesEventCopyWithImpl<$Res>
    implements $LocalImagesEventCopyWith<$Res> {
  _$LocalImagesEventCopyWithImpl(this._value, this._then);

  final LocalImagesEvent _value;
  // ignore: unused_field
  final $Res Function(LocalImagesEvent) _then;
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
  $Res call({bool? more});
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res> extends _$LocalImagesEventCopyWithImpl<$Res>
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
    return 'LocalImagesEvent.fetch(more: $more)';
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
    required TResult Function(int index) select,
    required TResult Function() sendSelected,
  }) {
    return fetch(more);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(int index)? select,
    TResult Function()? sendSelected,
  }) {
    return fetch?.call(more);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(int index)? select,
    TResult Function()? sendSelected,
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
    required TResult Function(_Select value) select,
    required TResult Function(_SendSelected value) sendSelected,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Select value)? select,
    TResult Function(_SendSelected value)? sendSelected,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Select value)? select,
    TResult Function(_SendSelected value)? sendSelected,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements LocalImagesEvent {
  const factory _Fetch([final bool? more]) = _$_Fetch;

  bool? get more;
  @JsonKey(ignore: true)
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectCopyWith<$Res> {
  factory _$$_SelectCopyWith(_$_Select value, $Res Function(_$_Select) then) =
      __$$_SelectCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$_SelectCopyWithImpl<$Res> extends _$LocalImagesEventCopyWithImpl<$Res>
    implements _$$_SelectCopyWith<$Res> {
  __$$_SelectCopyWithImpl(_$_Select _value, $Res Function(_$_Select) _then)
      : super(_value, (v) => _then(v as _$_Select));

  @override
  _$_Select get _value => super._value as _$_Select;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$_Select(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Select implements _Select {
  const _$_Select(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'LocalImagesEvent.select(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Select &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$_SelectCopyWith<_$_Select> get copyWith =>
      __$$_SelectCopyWithImpl<_$_Select>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetch,
    required TResult Function(int index) select,
    required TResult Function() sendSelected,
  }) {
    return select(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(int index)? select,
    TResult Function()? sendSelected,
  }) {
    return select?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(int index)? select,
    TResult Function()? sendSelected,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Select value) select,
    required TResult Function(_SendSelected value) sendSelected,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Select value)? select,
    TResult Function(_SendSelected value)? sendSelected,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Select value)? select,
    TResult Function(_SendSelected value)? sendSelected,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _Select implements LocalImagesEvent {
  const factory _Select(final int index) = _$_Select;

  int get index;
  @JsonKey(ignore: true)
  _$$_SelectCopyWith<_$_Select> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendSelectedCopyWith<$Res> {
  factory _$$_SendSelectedCopyWith(
          _$_SendSelected value, $Res Function(_$_SendSelected) then) =
      __$$_SendSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SendSelectedCopyWithImpl<$Res>
    extends _$LocalImagesEventCopyWithImpl<$Res>
    implements _$$_SendSelectedCopyWith<$Res> {
  __$$_SendSelectedCopyWithImpl(
      _$_SendSelected _value, $Res Function(_$_SendSelected) _then)
      : super(_value, (v) => _then(v as _$_SendSelected));

  @override
  _$_SendSelected get _value => super._value as _$_SendSelected;
}

/// @nodoc

class _$_SendSelected implements _SendSelected {
  const _$_SendSelected();

  @override
  String toString() {
    return 'LocalImagesEvent.sendSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SendSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetch,
    required TResult Function(int index) select,
    required TResult Function() sendSelected,
  }) {
    return sendSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(int index)? select,
    TResult Function()? sendSelected,
  }) {
    return sendSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(int index)? select,
    TResult Function()? sendSelected,
    required TResult orElse(),
  }) {
    if (sendSelected != null) {
      return sendSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Select value) select,
    required TResult Function(_SendSelected value) sendSelected,
  }) {
    return sendSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Select value)? select,
    TResult Function(_SendSelected value)? sendSelected,
  }) {
    return sendSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Select value)? select,
    TResult Function(_SendSelected value)? sendSelected,
    required TResult orElse(),
  }) {
    if (sendSelected != null) {
      return sendSelected(this);
    }
    return orElse();
  }
}

abstract class _SendSelected implements LocalImagesEvent {
  const factory _SendSelected() = _$_SendSelected;
}

/// @nodoc
mixin _$LocalImagesState {
  List<Medium> get localImagesMediums => throw _privateConstructorUsedError;
  StateStatus get status => throw _privateConstructorUsedError;
  List<int> get selectedIndexes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalImagesStateCopyWith<LocalImagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalImagesStateCopyWith<$Res> {
  factory $LocalImagesStateCopyWith(
          LocalImagesState value, $Res Function(LocalImagesState) then) =
      _$LocalImagesStateCopyWithImpl<$Res>;
  $Res call(
      {List<Medium> localImagesMediums,
      StateStatus status,
      List<int> selectedIndexes});

  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$LocalImagesStateCopyWithImpl<$Res>
    implements $LocalImagesStateCopyWith<$Res> {
  _$LocalImagesStateCopyWithImpl(this._value, this._then);

  final LocalImagesState _value;
  // ignore: unused_field
  final $Res Function(LocalImagesState) _then;

  @override
  $Res call({
    Object? localImagesMediums = freezed,
    Object? status = freezed,
    Object? selectedIndexes = freezed,
  }) {
    return _then(_value.copyWith(
      localImagesMediums: localImagesMediums == freezed
          ? _value.localImagesMediums
          : localImagesMediums // ignore: cast_nullable_to_non_nullable
              as List<Medium>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      selectedIndexes: selectedIndexes == freezed
          ? _value.selectedIndexes
          : selectedIndexes // ignore: cast_nullable_to_non_nullable
              as List<int>,
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
abstract class _$$_LocalImagesStateCopyWith<$Res>
    implements $LocalImagesStateCopyWith<$Res> {
  factory _$$_LocalImagesStateCopyWith(
          _$_LocalImagesState value, $Res Function(_$_LocalImagesState) then) =
      __$$_LocalImagesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Medium> localImagesMediums,
      StateStatus status,
      List<int> selectedIndexes});

  @override
  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_LocalImagesStateCopyWithImpl<$Res>
    extends _$LocalImagesStateCopyWithImpl<$Res>
    implements _$$_LocalImagesStateCopyWith<$Res> {
  __$$_LocalImagesStateCopyWithImpl(
      _$_LocalImagesState _value, $Res Function(_$_LocalImagesState) _then)
      : super(_value, (v) => _then(v as _$_LocalImagesState));

  @override
  _$_LocalImagesState get _value => super._value as _$_LocalImagesState;

  @override
  $Res call({
    Object? localImagesMediums = freezed,
    Object? status = freezed,
    Object? selectedIndexes = freezed,
  }) {
    return _then(_$_LocalImagesState(
      localImagesMediums: localImagesMediums == freezed
          ? _value._localImagesMediums
          : localImagesMediums // ignore: cast_nullable_to_non_nullable
              as List<Medium>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      selectedIndexes: selectedIndexes == freezed
          ? _value._selectedIndexes
          : selectedIndexes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_LocalImagesState extends _LocalImagesState {
  const _$_LocalImagesState(
      {final List<Medium> localImagesMediums = const [],
      this.status = const StateStatus(),
      final List<int> selectedIndexes = const []})
      : _localImagesMediums = localImagesMediums,
        _selectedIndexes = selectedIndexes,
        super._();

  final List<Medium> _localImagesMediums;
  @override
  @JsonKey()
  List<Medium> get localImagesMediums {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_localImagesMediums);
  }

  @override
  @JsonKey()
  final StateStatus status;
  final List<int> _selectedIndexes;
  @override
  @JsonKey()
  List<int> get selectedIndexes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedIndexes);
  }

  @override
  String toString() {
    return 'LocalImagesState(localImagesMediums: $localImagesMediums, status: $status, selectedIndexes: $selectedIndexes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalImagesState &&
            const DeepCollectionEquality()
                .equals(other._localImagesMediums, _localImagesMediums) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other._selectedIndexes, _selectedIndexes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_localImagesMediums),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_selectedIndexes));

  @JsonKey(ignore: true)
  @override
  _$$_LocalImagesStateCopyWith<_$_LocalImagesState> get copyWith =>
      __$$_LocalImagesStateCopyWithImpl<_$_LocalImagesState>(this, _$identity);
}

abstract class _LocalImagesState extends LocalImagesState {
  const factory _LocalImagesState(
      {final List<Medium> localImagesMediums,
      final StateStatus status,
      final List<int> selectedIndexes}) = _$_LocalImagesState;
  const _LocalImagesState._() : super._();

  @override
  List<Medium> get localImagesMediums;
  @override
  StateStatus get status;
  @override
  List<int> get selectedIndexes;
  @override
  @JsonKey(ignore: true)
  _$$_LocalImagesStateCopyWith<_$_LocalImagesState> get copyWith =>
      throw _privateConstructorUsedError;
}
