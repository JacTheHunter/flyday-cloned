import 'package:auto_route/auto_route.dart';
import 'package:duration_picker/duration_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/widgets/app_calendar_bottom_sheet.dart';
import 'package:flyday_broker/common/widgets/app_spinner_time_picker_bottom_sheet.dart';
import 'package:flyday_broker/common/widgets/app_year_picker_bottom_sheet.dart';
import 'package:flyday_broker/common/widgets/dashboard_appbar_leading_icon.dart';
import 'package:flyday_broker/features/ads/blocs/ads_bloc/ads_bloc.dart';
import 'package:flyday_broker/features/aircrafts/blocs/aircraft_types_bloc/aircraft_types_bloc.dart';
import 'package:flyday_broker/features/currencies/widgets/currency_picker_bottom_sheet.dart';
import 'package:flyday_broker/features/offers/blocs/offers_bloc/offers_bloc.dart';
import 'package:flyday_broker/route/app_router.gr.dart';
import 'package:image_picker/image_picker.dart';

import '../../../common/utils/check_state_status.dart';
import '../../../common/utils/date_formaters.dart';
import '../../../common/utils/duration.dart';
import '../../../common/widgets/add_image_button.dart';
import '../../../common/widgets/input_button.dart';
import '../../../gen/assets.gen.dart';
import '../../special_conditions/blocs/special_conditions_bloc/special_conditions_bloc.dart';
import '../blocs/offer_editor_bloc/offer_editor_bloc.dart';
import 'offer_condition_checkbox.dart';

class OfferEditorViewMobile extends StatelessWidget {
  const OfferEditorViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<OfferEditorBloc>();
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          leading: const DashboardAppbarLeadingIcon(),
          title: Text('send_offer'.tr()),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: BlocConsumer<OfferEditorBloc, OfferEditorState>(
            listener: (context, state) {
              checkStateStatusForError(context, state.status);
              if (state.status is SuccessStatus) {
                context.read<OffersBloc>().add(const OffersEvent.fetch());
                context.read<AdsBloc>().add(const AdsEvent.fetchAds());
                context.router.pop();
              }
            },
            builder: (context, state) {
              return ListView(
                children: [
                  Text(
                    'jet'.tr(),
                    style: context.appTextTheme.offerEditorTitleInnerTextStyle,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      context.router.push(const AircraftSeachRoute());
                    },
                    child: TextFormField(
                      key: ValueKey(state.jetNumber.value),
                      initialValue: state.jetNumber.value,
                      enabled: false,
                      decoration: InputDecoration(
                        hintText: 'number'.tr(),
                        errorText: state.jetNumber.errorText,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    key: ValueKey(state.jetNumber.value),
                    initialValue: state.jetName.value,
                    onChanged: (value) => bloc.add(OfferEditorEvent.setJetName(value)),
                    enabled: state.jetNumber.value.isNotEmpty,
                    decoration: InputDecoration(
                      hintText: 'name_jet'.tr(),
                      errorText: state.jetName.errorText,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  BlocBuilder<AircraftTypesBloc, AircraftTypesState>(
                    builder: (context, tstate) {
                      return DropdownButtonHideUnderline(
                        child: DropdownButtonFormField<String?>(
                          value: state.jetClass.value.isNotEmpty ? state.jetClass.value : null,
                          items: [
                            ...tstate.aircraftTypes.map(
                              (t) => DropdownMenuItem(
                                value: t.name,
                                child: Text(
                                  t.name,
                                ),
                              ),
                            )
                          ],
                          onChanged: (value) => value != null ? bloc.add(OfferEditorEvent.setJetClass(value)) : null,
                          decoration: InputDecoration(
                            hintText: 'class'.tr(),
                            contentPadding: const EdgeInsets.fromLTRB(12, 20, 12, 12),
                            errorText: state.jetClass.errorText,
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: context.appColors.inputFillMobileColor,
                      border: Border.all(color: context.appColors.inputBorderColor),
                    ),
                    padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                    child: Row(
                      children: [
                        Text(
                          'seats:'.tr(),
                          style: context.appTextTheme.inputHintTextStyle,
                        ),
                        const Spacer(),
                        InputButton(
                          onPressed: () {
                            bloc.add(const OfferEditorEvent.decreaseSeatsNumber());
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
                          state.seats.toString(),
                          style: context.appTextTheme.inputSuffixTextStyle,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        InputButton(
                          onPressed: () {
                            bloc.add(const OfferEditorEvent.increaseSeatsNumber());
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
                    height: 8,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () async {
                            FocusManager.instance.primaryFocus?.unfocus();
                            final dt = await showModalBottomSheet<DateTime?>(
                              context: context,
                              builder: (context) => BlocProvider.value(
                                value: bloc,
                                child: AppYearPickerBottomSheet(
                                  initialValue: state.jetRegistrationYear.value.isNotEmpty
                                      ? DateTime.tryParse(state.jetRegistrationYear.value)
                                      : null,
                                ),
                              ),
                              isScrollControlled: true,
                            );
                            if (dt != null) {
                              bloc.add(OfferEditorEvent.setJetRegistrationYear(dt.year.toString()));
                            }
                          },
                          child: TextFormField(
                            key: ValueKey(state.jetRegistrationYear.value),
                            enabled: false,
                            initialValue: state.jetRegistrationYear.value,
                            decoration: InputDecoration(
                              hintText: 'year'.tr(),
                              errorText: state.jetRegistrationYear.errorText,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () async {
                            FocusManager.instance.primaryFocus?.unfocus();
                            final dt = await showModalBottomSheet<DateTime?>(
                              context: context,
                              builder: (context) => BlocProvider.value(
                                value: bloc,
                                child: AppYearPickerBottomSheet(
                                  initialValue: state.jetRolloutYear.value.isNotEmpty
                                      ? DateTime.tryParse(state.jetRolloutYear.value)
                                      : null,
                                ),
                              ),
                              isScrollControlled: true,
                            );
                            if (dt != null) {
                              bloc.add(OfferEditorEvent.setJetRolloutYear(dt.year.toString()));
                            }
                          },
                          child: TextFormField(
                            key: ValueKey(state.jetRolloutYear.value),
                            enabled: false,
                            initialValue: state.jetRolloutYear.value,
                            decoration: InputDecoration(
                              hintText: 'year'.tr(),
                              errorText: state.jetRolloutYear.errorText,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'photo'.tr(),
                    style: context.appTextTheme.offerEditorTitleInnerTextStyle,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 90,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...state.images.map(
                          (i) => Container(
                            margin: const EdgeInsets.only(right: 8),
                            child: AddImageButton(
                              imagePath: i,
                              width: 90,
                              height: 90,
                              onRemove: () {
                                bloc.add(OfferEditorEvent.removeImage(i));
                              },
                              onPressed: () async {
                                final ImagePicker picker = ImagePicker();
                                // Pick an image
                                final List<XFile>? images = await picker.pickMultiImage();
                                if (images != null && images.isNotEmpty) {
                                  bloc.add(OfferEditorEvent.addImages(images.map((e) => e.path).toList()));
                                }
                              },
                            ),
                          ),
                        ),
                        AddImageButton(
                          width: 90,
                          height: 90,
                          onPressed: () async {
                            final ImagePicker picker = ImagePicker();
                            // Pick an image
                            final List<XFile>? images = await picker.pickMultiImage();
                            if (images != null && images.isNotEmpty) {
                              bloc.add(OfferEditorEvent.addImages(images.map((e) => e.path).toList()));
                            }
                          },
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'price_and_time'.tr(),
                    style: context.appTextTheme.offerEditorTitleInnerTextStyle,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextFormField(
                          onChanged: (value) => bloc.add(OfferEditorEvent.setTotal(value)),
                          initialValue: state.total.value,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                              RegExp(r'[0-9]'),
                            ),
                            FilteringTextInputFormatter.deny(
                              RegExp(r'^0+'), //users can't type 0 at 1st position
                            )
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'total'.tr(),
                            errorText: state.total.errorText,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            FocusManager.instance.primaryFocus?.unfocus();
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
                          child: Ink(
                            height: 58,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: context.appColors.inputFillMobileColor,
                              border: Border.all(color: context.appColors.inputBorderColor),
                            ),
                            padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                            child: Row(
                              children: [
                                state.currency.value != null
                                    ? Text(
                                        '${state.currency.value!.symbol} ${state.currency.value!.code.toUpperCase()}',
                                        style: context.appTextTheme.inputTextStyle,
                                      )
                                    : Text(
                                        'currency'.tr(),
                                        style: context.appTextTheme.inputHintTextStyle,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () async {
                      FocusManager.instance.primaryFocus?.unfocus();
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
                    height: 8,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () async {
                            FocusManager.instance.primaryFocus?.unfocus();
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
                        width: 15,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () async {
                            FocusManager.instance.primaryFocus?.unfocus();
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
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () async {
                      FocusManager.instance.primaryFocus?.unfocus();
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
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: context.appColors.inputFillMobileColor,
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
                    height: 8,
                  ),
                  TextFormField(
                    onChanged: (value) => bloc.add(OfferEditorEvent.setGeneralNote(value)),
                    decoration: InputDecoration(
                      hintText: 'general_note'.tr(),
                    ),
                    minLines: 2,
                    maxLines: 3,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'conditions'.tr(),
                    style: context.appTextTheme.offerEditorTitleInnerTextStyle,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  BlocBuilder<SpecialConditionsBloc, SpecialConditionsState>(
                    builder: (context, sstate) {
                      return Column(
                        children: [
                          ...sstate.specialConditions.map(
                            (e) => OfferConditionCheclbox(
                              onPressed: (bool value) {
                                if (value) {
                                  bloc.add(OfferEditorEvent.addSpecialCondition(e.id));
                                } else {
                                  bloc.add(OfferEditorEvent.removeSpecialCondition(e.id));
                                }
                              },
                              item: e,
                              value: state.specialConditionsIds.contains(e.id),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  SafeArea(
                    child: state.status is LoadingStatus
                        ? const Center(child: CircularProgressIndicator())
                        : ElevatedButton(
                            onPressed: () {
                              bloc.add(const OfferEditorEvent.submit());
                            },
                            child: Text(
                              'send_offer'.tr(),
                            )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
