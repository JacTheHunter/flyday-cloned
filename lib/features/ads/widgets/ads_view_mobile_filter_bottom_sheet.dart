import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/features/ads/blocs/ads_bloc/ads_bloc.dart';
import 'package:flyday_broker/features/ads/models/ad_status.dart';
import 'package:flyday_broker/common/widgets/app_bottom_sheet_option.dart';

import '../../../common/widgets/app_bottom_sheet.dart';
import '../blocs/ads_view_mobile_filter_bottom_sheet_cubit/ads_view_mobile_filter_bottom_sheet_cubit.dart';

class AdsViewMobileFiterBottomSheet extends StatelessWidget {
  final AdStatus initialStatus;
  const AdsViewMobileFiterBottomSheet({Key? key, required this.initialStatus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AdsViewMobileFilterBottomSheetCubit(initialStatus),
      child: Builder(builder: (context) {
        return BlocBuilder<AdsViewMobileFilterBottomSheetCubit, AdStatus>(
          builder: (context, state) {
            return AppBottomSheet(
              title: 'filter_by'.tr(),
              child: Column(
                children: [
                  ...AdStatus.values.map(
                    (status) => AppBottomSheetOption(
                        isSelected: state == status,
                        onTap: () {
                          context.read<AdsBloc>().add(AdsEvent.updateAdStatus(status));
                          context.router.pop();
                        },
                        text: status.name),
                  ),
                  // const SizedBox(
                  //   height: 22,
                  // ),
                  // Center(
                  //   child: ElevatedButton(
                  //       onPressed: () {
                  //         context.read<AdsBloc>().add(AdsEvent.updateAdStatus(state));
                  //         context.router.pop();
                  //       },
                  //       child: Text('ready'.tr())),
                  // ),
                ],
              ),
            );
          },
        );
      }),
    );
  }
}
