import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../common/widgets/app_bottom_sheet.dart';
import '../blocs/app_calendar_date_picker_bottom_sheet_cubit/app_calendar_date_picker_bottom_sheet_cubit.dart';

class AppCalendarDatePickerBottomSheet extends StatelessWidget {
  final DateTime? initialValue;
  const AppCalendarDatePickerBottomSheet({Key? key, this.initialValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCalendarDatePickerBottomSheetCubit(
        initialFocusedDay: initialValue ?? DateTime.now(),
        initialSelectedDay: initialValue,
      ),
      child: Builder(builder: (context) {
        return BlocBuilder<AppCalendarDatePickerBottomSheetCubit, AppCalendarDatePickerBottomSheetState>(
          builder: (context, state) {
            return AppBottomSheet(
              child: Column(
                children: [
                  TableCalendar(
                    availableCalendarFormats: const {
                      CalendarFormat.month: 'Month',
                    },
                    onDaySelected: (selectedDay, focusedDay) =>
                        context.read<AppCalendarDatePickerBottomSheetCubit>().setSelectedDay(selectedDay, focusedDay),
                    calendarStyle: CalendarStyle(
                      outsideDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      defaultDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      todayDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      weekendDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      selectedDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: context.appColors.appCalendarSelectedDayBackgroundColor,
                      ),
                      selectedTextStyle: context.appTextTheme.appCalendarDatePickerSelectedDayTextStyle,
                      defaultTextStyle: context.appTextTheme.appCalendarDatePickerDayTextStyle,
                      outsideTextStyle: context.appTextTheme.appCalendarDatePickerInactiveDayTextStyle,
                      isTodayHighlighted: false,
                    ),
                    daysOfWeekStyle: DaysOfWeekStyle(
                      weekdayStyle: context.appTextTheme.appCalendarDatePickerWeekDayTextStyle,
                      weekendStyle: context.appTextTheme.appCalendarDatePickerWeekDayTextStyle,
                    ),
                    headerStyle: HeaderStyle(
                      headerMargin: const EdgeInsets.only(bottom: 30),
                      titleCentered: true,
                      titleTextStyle: context.appTextTheme.appCalendarDatePickerMonthTextStyle,
                      leftChevronIcon: Icon(
                        CupertinoIcons.left_chevron,
                        color: context.appColors.appCalendarChevronColor,
                        size: 20,
                      ),
                      rightChevronIcon: Icon(
                        CupertinoIcons.right_chevron,
                        color: context.appColors.appCalendarChevronColor,
                        size: 20,
                      ),
                    ),
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: state.focusedDay,
                    selectedDayPredicate: (dt) => isSameDay(state.selectedDay, dt),
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
                            context.router.pop(state.selectedDay);
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
