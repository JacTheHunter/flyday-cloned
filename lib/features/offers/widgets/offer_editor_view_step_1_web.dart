import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/offers/blocs/offer_editor_bloc/offer_editor_bloc.dart';

import '../../../common/widgets/app_year_picker_bottom_sheet.dart';
import '../../../common/widgets/input_button.dart';
import '../../aircrafts/blocs/aircraft_types_bloc/aircraft_types_bloc.dart';
import '../../aircrafts/widgets/aircraft_search_view_web.dart';

class OfferEditorViewStep1Web extends StatelessWidget {
  const OfferEditorViewStep1Web({Key? key}) : super(key: key);

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
                'jet_info'.tr(),
                style: context.appTextTheme.offerEditorInnerTitleTextStyle,
              ),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                onTap: () {
                  bloc.add(const OfferEditorEvent.activateWebSearchAircraftWidget());
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
                height: 24,
              ),
              AnimatedSwitcher(
                duration: kThemeAnimationDuration,
                child: state.isWebSearchAircraftWidgetActive
                    ? const SizedBox(height: 300, child: AircraftSearchViewWeb())
                    : Column(
                        children: [
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
                            height: 24,
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
                                  onChanged: (value) =>
                                      value != null ? bloc.add(OfferEditorEvent.setJetClass(value)) : null,
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
                        ],
                      ),
              ),
            ],
          );
        },
      ),
    );
  }
}
