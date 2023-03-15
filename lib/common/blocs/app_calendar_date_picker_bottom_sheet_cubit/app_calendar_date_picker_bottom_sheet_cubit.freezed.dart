// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_calendar_date_picker_bottom_sheet_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppCalendarDatePickerBottomSheetState {
  DateTime? get selectedDay => throw _privateConstructorUsedError;
  DateTime get focusedDay => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppCalendarDatePickerBottomSheetStateCopyWith<
          AppCalendarDatePickerBottomSheetState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppCalendarDatePickerBottomSheetStateCopyWith<$Res> {
  factory $AppCalendarDatePickerBottomSheetStateCopyWith(
          AppCalendarDatePickerBottomSheetState value,
          $Res Function(AppCalendarDatePickerBottomSheetState) then) =
      _$AppCalendarDatePickerBottomSheetStateCopyWithImpl<$Res>;
  $Res call({DateTime? selectedDay, DateTime focusedDay});
}

/// @nodoc
class _$AppCalendarDatePickerBottomSheetStateCopyWithImpl<$Res>
    implements $AppCalendarDatePickerBottomSheetStateCopyWith<$Res> {
  _$AppCalendarDatePickerBottomSheetStateCopyWithImpl(this._value, this._then);

  final AppCalendarDatePickerBottomSheetState _value;
  // ignore: unused_field
  final $Res Function(AppCalendarDatePickerBottomSheetState) _then;

  @override
  $Res call({
    Object? selectedDay = freezed,
    Object? focusedDay = freezed,
  }) {
    return _then(_value.copyWith(
      selectedDay: selectedDay == freezed
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      focusedDay: focusedDay == freezed
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_AppCalendarDatePickerBottomSheetStateCopyWith<$Res>
    implements $AppCalendarDatePickerBottomSheetStateCopyWith<$Res> {
  factory _$$_AppCalendarDatePickerBottomSheetStateCopyWith(
          _$_AppCalendarDatePickerBottomSheetState value,
          $Res Function(_$_AppCalendarDatePickerBottomSheetState) then) =
      __$$_AppCalendarDatePickerBottomSheetStateCopyWithImpl<$Res>;
  @override
  $Res call({DateTime? selectedDay, DateTime focusedDay});
}

/// @nodoc
class __$$_AppCalendarDatePickerBottomSheetStateCopyWithImpl<$Res>
    extends _$AppCalendarDatePickerBottomSheetStateCopyWithImpl<$Res>
    implements _$$_AppCalendarDatePickerBottomSheetStateCopyWith<$Res> {
  __$$_AppCalendarDatePickerBottomSheetStateCopyWithImpl(
      _$_AppCalendarDatePickerBottomSheetState _value,
      $Res Function(_$_AppCalendarDatePickerBottomSheetState) _then)
      : super(_value,
            (v) => _then(v as _$_AppCalendarDatePickerBottomSheetState));

  @override
  _$_AppCalendarDatePickerBottomSheetState get _value =>
      super._value as _$_AppCalendarDatePickerBottomSheetState;

  @override
  $Res call({
    Object? selectedDay = freezed,
    Object? focusedDay = freezed,
  }) {
    return _then(_$_AppCalendarDatePickerBottomSheetState(
      selectedDay: selectedDay == freezed
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      focusedDay: focusedDay == freezed
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_AppCalendarDatePickerBottomSheetState
    implements _AppCalendarDatePickerBottomSheetState {
  const _$_AppCalendarDatePickerBottomSheetState(
      {this.selectedDay, required this.focusedDay});

  @override
  final DateTime? selectedDay;
  @override
  final DateTime focusedDay;

  @override
  String toString() {
    return 'AppCalendarDatePickerBottomSheetState(selectedDay: $selectedDay, focusedDay: $focusedDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppCalendarDatePickerBottomSheetState &&
            const DeepCollectionEquality()
                .equals(other.selectedDay, selectedDay) &&
            const DeepCollectionEquality()
                .equals(other.focusedDay, focusedDay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedDay),
      const DeepCollectionEquality().hash(focusedDay));

  @JsonKey(ignore: true)
  @override
  _$$_AppCalendarDatePickerBottomSheetStateCopyWith<
          _$_AppCalendarDatePickerBottomSheetState>
      get copyWith => __$$_AppCalendarDatePickerBottomSheetStateCopyWithImpl<
          _$_AppCalendarDatePickerBottomSheetState>(this, _$identity);
}

abstract class _AppCalendarDatePickerBottomSheetState
    implements AppCalendarDatePickerBottomSheetState {
  const factory _AppCalendarDatePickerBottomSheetState(
          {final DateTime? selectedDay, required final DateTime focusedDay}) =
      _$_AppCalendarDatePickerBottomSheetState;

  @override
  DateTime? get selectedDay;
  @override
  DateTime get focusedDay;
  @override
  @JsonKey(ignore: true)
  _$$_AppCalendarDatePickerBottomSheetStateCopyWith<
          _$_AppCalendarDatePickerBottomSheetState>
      get copyWith => throw _privateConstructorUsedError;
}
