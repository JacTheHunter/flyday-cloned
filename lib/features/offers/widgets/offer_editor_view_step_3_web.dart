import 'package:duration_picker/duration_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

import '../../../common/utils/date_formaters.dart';
import '../../../common/utils/duration.dart';
import '../../../common/widgets/app_calendar_bottom_sheet.dart';
import '../../../common/widgets/app_spinner_time_picker_bottom_sheet.dart';
import '../../../common/widgets/input_button.dart';
import '../../../gen/assets.gen.dart';
import '../../currencies/widgets/currency_picker_bottom_sheet.dart';
import '../blocs/offer_editor_bloc/offer_editor_bloc.dart';

class OfferEditorViewStep3Web extends StatelessWidget {
  const OfferEditorViewStep3Web({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<OfferEditorBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<OfferEditorBloc, OfferEditorState>(
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'price_and_time'.tr(),
                style: context.appTextTheme.offerEditorInnerTitleTextStyle,
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextFormField(
                      onChanged: (value) => bloc.add(OfferEditorEvent.setTotal(value)),
                      initialValue: state.total.value,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                        hintText: 'total'.tr(),
                        errorText: state.total.errorText,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => BlocProvider.value(
                            value: bloc,
                            child: CurrencyPickerBottomSheet(
                              selectedCurrency: state.currency.value,
                              onSelect: (value) => bloc.add(OfferEditorEvent.setCurrency(value)),
                            ),
                          ),
                          isScrollControlled: true,
                        );
                      },
                      child: TextFormField(
                        key: ValueKey(state.currency.value),
                        enabled: false,
                        initialValue: state.currency.value != null
                            ? '${state.currency.value!.symbol} ${state.currency.value!.code.toUpperCase()}'
                            : null,
                        decoration: InputDecoration(
                          hintText: 'currency'.tr(),
                          errorText: state.currency.errorText,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () async {
                  var resultingDuration = await showDurationPicker(
                    context: context,
                    initialTime: state.flightTime.value ?? const Duration(minutes: 30),
                  );
                  if (resultingDuration != null) {
                    bloc.add(OfferEditorEvent.setFlightTime(resultingDuration));
                  }
                },
                child: TextFormField(
                  key: ValueKey(state.flightTime.value),
                  enabled: false,
                  initialValue: durationToString(state.flightTime.value),
                  decoration: InputDecoration(
                    hintText: 'flight_time'.tr(),
                    errorText: state.flightTime.errorText,
                    prefixIcon: Align(
                      heightFactor: 1,
                      widthFactor: 1,
                      child: Assets.images.vector.timer.svg(color: context.appColors.inputIconColor),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () async {
                        final dt = await showModalBottomSheet<DateTime?>(
                          context: context,
                          builder: (context) => BlocProvider.value(
                            value: bloc,
                            child: AppCalendarDatePickerBottomSheet(
                              initialValue: state.departureDate.value,
                            ),
                          ),
                          isScrollControlled: true,
                        );
                        if (dt != null) {
                          bloc.add(OfferEditorEvent.setDepartureDate(dt));
                        }
                      },
                      child: TextFormField(
                        key: ValueKey(state.departureDate),
                        enabled: false,
                        initialValue: DateFormaters.ddMMyyyy(state.departureDate.value),
                        decoration: InputDecoration(
                          hintText: 'departure_date'.tr(),
                          errorText: state.departureDate.errorText,
                          prefixIcon: Align(
                            heightFactor: 1,
                            widthFactor: 1,
                            child: Assets.images.vector.calendar.svg(color: context.appColors.inputIconColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () async {
                        final dt = await showModalBottomSheet<DateTime?>(
                          context: context,
                          builder: (context) => BlocProvider.value(
                            value: bloc,
                            child: AppSpinnerTimePickerBottomSheet(
                              initialValue: state.departureTime.value,
                            ),
                          ),
                          isScrollControlled: true,
                        );
                        if (dt != null) {
                          bloc.add(OfferEditorEvent.setDepartureTime(dt));
                        }
                      },
                      child: TextFormField(
                        key: ValueKey(state.departureTime),
                        enabled: false,
                        initialValue: DateFormaters.hHmm(state.departureTime.value),
                        decoration: InputDecoration(
                          hintText: 'departure_time'.tr(),
                          errorText: state.departureTime.errorText,
                          prefixIcon: Align(
                            heightFactor: 1,
                            widthFactor: 1,
                            child: Assets.images.vector.clock.svg(color: context.appColors.inputIconColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () async {
                  final dt = await showModalBottomSheet<DateTime?>(
                    context: context,
                    builder: (context) => BlocProvider.value(
                      value: bloc,
                      child: AppCalendarDatePickerBottomSheet(
                        initialValue: state.validUntilDate.value,
                      ),
                    ),
                    isScrollControlled: true,
                  );
                  if (dt != null) {
                    bloc.add(OfferEditorEvent.setValidUntilDate(dt));
                  }
                },
                child: TextFormField(
                  key: ValueKey(state.validUntilDate),
                  enabled: false,
                  initialValue: DateFormaters.ddMMyyyy(state.validUntilDate.value),
                  decoration: InputDecoration(
                    hintText: 'valid_until:'.tr(),
                    errorText: state.validUntilDate.errorText,
                    prefixIcon: Align(
                      heightFactor: 1,
                      widthFactor: 1,
                      child: Assets.images.vector.calendar.svg(color: context.appColors.inputIconColor),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: context.appColors.inputFillWebColor,
                  border: Border.all(color: context.appColors.inputBorderColor),
                ),
                padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                child: Row(
                  children: [
                    Text(
                      'refueling:'.tr(),
                      style: context.appTextTheme.inputHintTextStyle,
                    ),
                    const Spacer(),
                    InputButton(
                      onPressed: () {
                        bloc.add(const OfferEditorEvent.decreaseRefuelingsNumber());
                      },
                      child: Icon(
                        Icons.remove,
                        color: context.appColors.inputButtonIconColor,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      state.refuelings.toString(),
                      style: context.appTextTheme.inputSuffixTextStyle,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    InputButton(
                      onPressed: () {
                        bloc.add(const OfferEditorEvent.increaseRefuelingsNumber());
                      },
                      child: Icon(
                        Icons.add,
                        color: context.appColors.inputButtonIconColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                onChanged: (value) => bloc.add(OfferEditorEvent.setGeneralNote(value)),
                decoration: InputDecoration(
                  hintText: 'general_note'.tr(),
                ),
                minLines: 2,
                maxLines: 3,
              ),
            ],
          );
        },
      ),
    );
  }
}
