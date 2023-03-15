import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_year_picker_bottom_sheet_state.dart';
part 'app_year_picker_bottom_sheet_cubit.freezed.dart';

class AppYearPickerBottomSheetCubit extends Cubit<AppYearPickerBottomSheetState> {
  AppYearPickerBottomSheetCubit({
    required DateTime initialYear,
  }) : super(AppYearPickerBottomSheetState(selectedYear: initialYear));

  void setYear(DateTime value) => emit(state.copyWith(selectedYear: value));
}
