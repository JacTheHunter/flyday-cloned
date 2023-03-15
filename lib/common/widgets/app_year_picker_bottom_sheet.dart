import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart' as dp;
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

import '../../../common/widgets/app_bottom_sheet.dart';
import '../blocs/app_year_picker_bottom_sheet_cubit/app_year_picker_bottom_sheet_cubit.dart';

class AppYearPickerBottomSheet extends StatelessWidget {
  final DateTime? initialValue;
  const AppYearPickerBottomSheet({Key? key, this.initialValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppYearPickerBottomSheetCubit(
        initialYear: initialValue ?? DateTime.now(),
      ),
      child: Builder(builder: (context) {
        return BlocBuilder<AppYearPickerBottomSheetCubit, AppYearPickerBottomSheetState>(
          builder: (context, state) {
            return AppBottomSheet(
              child: Column(
                children: [
                  dp.YearPicker.single(
                    selectedDate: state.selectedYear,
                    onChanged: (val) => context.read<AppYearPickerBottomSheetCubit>().setYear(val),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
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
                            context.router.pop(state.selectedYear);
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
