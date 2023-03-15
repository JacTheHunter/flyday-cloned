part of 'app_spinner_time_picker_bottom_sheet_cubit.dart';

@freezed
class AppSpinnerTimePickerBottomSheetState with _$AppSpinnerTimePickerBottomSheetState {
  const AppSpinnerTimePickerBottomSheetState._();
  const factory AppSpinnerTimePickerBottomSheetState({
    @Default(0) int hour,
    @Default(0) int minute,
    @Default(true) bool isAM,
  }) = _AppSpinnerTimePickerBottomSheetState;

  DateTime get selectedTime {
    final now = DateTime.now();
    return DateTime(
      now.year,
      now.month,
      now.day,
      isAM ? hour + 1 : hour + 13,
      minute,
    );
  }
}
