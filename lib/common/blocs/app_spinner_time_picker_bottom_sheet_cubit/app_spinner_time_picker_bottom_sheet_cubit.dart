import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_spinner_time_picker_bottom_sheet_state.dart';
part 'app_spinner_time_picker_bottom_sheet_cubit.freezed.dart';

class AppSpinnerTimePickerBottomSheetCubit extends Cubit<AppSpinnerTimePickerBottomSheetState> {
  AppSpinnerTimePickerBottomSheetCubit({
    required DateTime initialTime,
  }) : super(const AppSpinnerTimePickerBottomSheetState());

  void setHour(int value) => emit(state.copyWith(hour: value));
  void setMinute(int value) => emit(state.copyWith(minute: value));
  void setAM(bool value) => emit(state.copyWith(isAM: value));
}
