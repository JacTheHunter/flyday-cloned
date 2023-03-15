// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_year_picker_bottom_sheet_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppYearPickerBottomSheetState {
  DateTime get selectedYear => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppYearPickerBottomSheetStateCopyWith<AppYearPickerBottomSheetState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppYearPickerBottomSheetStateCopyWith<$Res> {
  factory $AppYearPickerBottomSheetStateCopyWith(
          AppYearPickerBottomSheetState value,
          $Res Function(AppYearPickerBottomSheetState) then) =
      _$AppYearPickerBottomSheetStateCopyWithImpl<$Res>;
  $Res call({DateTime selectedYear});
}

/// @nodoc
class _$AppYearPickerBottomSheetStateCopyWithImpl<$Res>
    implements $AppYearPickerBottomSheetStateCopyWith<$Res> {
  _$AppYearPickerBottomSheetStateCopyWithImpl(this._value, this._then);

  final AppYearPickerBottomSheetState _value;
  // ignore: unused_field
  final $Res Function(AppYearPickerBottomSheetState) _then;

  @override
  $Res call({
    Object? selectedYear = freezed,
  }) {
    return _then(_value.copyWith(
      selectedYear: selectedYear == freezed
          ? _value.selectedYear
          : selectedYear // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_AppYearPickerBottomSheetStateCopyWith<$Res>
    implements $AppYearPickerBottomSheetStateCopyWith<$Res> {
  factory _$$_AppYearPickerBottomSheetStateCopyWith(
          _$_AppYearPickerBottomSheetState value,
          $Res Function(_$_AppYearPickerBottomSheetState) then) =
      __$$_AppYearPickerBottomSheetStateCopyWithImpl<$Res>;
  @override
  $Res call({DateTime selectedYear});
}

/// @nodoc
class __$$_AppYearPickerBottomSheetStateCopyWithImpl<$Res>
    extends _$AppYearPickerBottomSheetStateCopyWithImpl<$Res>
    implements _$$_AppYearPickerBottomSheetStateCopyWith<$Res> {
  __$$_AppYearPickerBottomSheetStateCopyWithImpl(
      _$_AppYearPickerBottomSheetState _value,
      $Res Function(_$_AppYearPickerBottomSheetState) _then)
      : super(_value, (v) => _then(v as _$_AppYearPickerBottomSheetState));

  @override
  _$_AppYearPickerBottomSheetState get _value =>
      super._value as _$_AppYearPickerBottomSheetState;

  @override
  $Res call({
    Object? selectedYear = freezed,
  }) {
    return _then(_$_AppYearPickerBottomSheetState(
      selectedYear: selectedYear == freezed
          ? _value.selectedYear
          : selectedYear // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_AppYearPickerBottomSheetState
    implements _AppYearPickerBottomSheetState {
  const _$_AppYearPickerBottomSheetState({required this.selectedYear});

  @override
  final DateTime selectedYear;

  @override
  String toString() {
    return 'AppYearPickerBottomSheetState(selectedYear: $selectedYear)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppYearPickerBottomSheetState &&
            const DeepCollectionEquality()
                .equals(other.selectedYear, selectedYear));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedYear));

  @JsonKey(ignore: true)
  @override
  _$$_AppYearPickerBottomSheetStateCopyWith<_$_AppYearPickerBottomSheetState>
      get copyWith => __$$_AppYearPickerBottomSheetStateCopyWithImpl<
          _$_AppYearPickerBottomSheetState>(this, _$identity);
}

abstract class _AppYearPickerBottomSheetState
    implements AppYearPickerBottomSheetState {
  const factory _AppYearPickerBottomSheetState(
          {required final DateTime selectedYear}) =
      _$_AppYearPickerBottomSheetState;

  @override
  DateTime get selectedYear;
  @override
  @JsonKey(ignore: true)
  _$$_AppYearPickerBottomSheetStateCopyWith<_$_AppYearPickerBottomSheetState>
      get copyWith => throw _privateConstructorUsedError;
}
