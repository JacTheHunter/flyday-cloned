import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

import '../../special_conditions/blocs/special_conditions_bloc/special_conditions_bloc.dart';
import '../blocs/offer_editor_bloc/offer_editor_bloc.dart';
import 'offer_condition_checkbox.dart';

class OfferEditorViewStep4Web extends StatelessWidget {
  const OfferEditorViewStep4Web({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<OfferEditorBloc>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'conditions'.tr(),
                style: context.appTextTheme.offerEditorInnerTitleTextStyle,
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<OfferEditorBloc, OfferEditorState>(
            builder: (context, state) {
              return BlocBuilder<SpecialConditionsBloc, SpecialConditionsState>(
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
                      if (state.status is LoadingStatus) const Center(child: CircularProgressIndicator())
                    ],
                  );
                },
              );
            },
          ),
          // OfferConditionCheclbox(
          //   onPressed: (bool value) {},
          //   text: 'Pets',
          //   value: true,
          // ),
          // OfferConditionCheclbox(
          //   onPressed: (bool value) {},
          //   text: 'food',
          //   value: false,
          // ),
        ],
      ),
    );
  }
}
