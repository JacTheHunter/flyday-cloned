import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_calendar_date_picker_bottom_sheet_state.dart';
part 'app_calendar_date_picker_bottom_sheet_cubit.freezed.dart';

class AppCalendarDatePickerBottomSheetCubit extends Cubit<AppCalendarDatePickerBottomSheetState> {
  AppCalendarDatePickerBottomSheetCubit({
    required DateTime initialFocusedDay,
    DateTime? initialSelectedDay,
  }) : super(AppCalendarDatePickerBottomSheetState(focusedDay: initialFocusedDay, selectedDay: initialSelectedDay));

  void setSelectedDay(DateTime selectedDay, DateTime focusedDay) =>
      emit(state.copyWith(selectedDay: selectedDay, focusedDay: focusedDay));
  void setFocusedDay(DateTime value) => emit(state.copyWith(focusedDay: value));
}
