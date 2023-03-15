part of 'app_calendar_date_picker_bottom_sheet_cubit.dart';

@freezed
class AppCalendarDatePickerBottomSheetState with _$AppCalendarDatePickerBottomSheetState {
  const factory AppCalendarDatePickerBottomSheetState({
    DateTime? selectedDay,
    required DateTime focusedDay,
  }) = _AppCalendarDatePickerBottomSheetState;
}
