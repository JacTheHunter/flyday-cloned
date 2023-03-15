import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/blocs/app_spinner_time_picker_bottom_sheet_cubit/app_spinner_time_picker_bottom_sheet_cubit.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

import '../../../common/widgets/app_bottom_sheet.dart';
import 'app_spinner_time_picker_bottom_sheet_am_builder.dart';
import 'app_spinner_time_picker_bottom_sheet_time_builder.dart';

class AppSpinnerTimePickerBottomSheet extends StatelessWidget {
  final DateTime? initialValue;

  const AppSpinnerTimePickerBottomSheet({Key? key, this.initialValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppSpinnerTimePickerBottomSheetCubit(
        initialTime: initialValue ?? DateTime.now(),
      ),
      child: Builder(builder: (context) {
        return BlocBuilder<AppSpinnerTimePickerBottomSheetCubit, AppSpinnerTimePickerBottomSheetState>(
          builder: (context, state) {
            return AppBottomSheet(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AppSpinnerTimePickerBottomSheetAMBuilder(
                        value: state.isAM,
                        onAMChanged: (value) => context.read<AppSpinnerTimePickerBottomSheetCubit>().setAM(value),
                      ),
                      const SizedBox(height: 170, child: VerticalDivider()),
                      AppSpinnerTimePickerBottomSheetTimeBuilder(
                        value: state.hour,
                        start: 0,
                        end: 12,
                        onTimeChanged: (value) => context.read<AppSpinnerTimePickerBottomSheetCubit>().setHour(value),
                      ),
                      const SizedBox(height: 170, child: VerticalDivider()),
                      AppSpinnerTimePickerBottomSheetTimeBuilder(
                        value: state.minute,
                        start: 0,
                        end: 60,
                        onTimeChanged: (value) => context.read<AppSpinnerTimePickerBottomSheetCubit>().setMinute(value),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            context.router.pop();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: context.appColors.secondaryButtonBackgroundColor,
                          ),
                          child: Text(
                            'back'.tr(),
                            style: context.appTextTheme.secondaryButtonWebTextStyle,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            context.router.pop(state.selectedTime);
                          },
                          child: Text('submit'.tr()),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      }),
    );
  }
}
