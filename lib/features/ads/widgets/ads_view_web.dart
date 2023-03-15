import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/widgets/dashboard_web_view_wrapper.dart';
import 'package:flyday_broker/features/ads/models/ad_status.dart';

import '../../../common/utils/check_state_status.dart';
import '../../../gen/assets.gen.dart';
import '../blocs/ads_bloc/ads_bloc.dart';
import 'ads_view_web_item.dart';

class AdsViewWeb extends StatelessWidget {
  const AdsViewWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DashboardWebViewWrapper(
      onMaxScrollExtent: () => context.read<AdsBloc>().add(const AdsEvent.fetchAds(true)),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1220),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 14,
              ),
              BlocSelector<AdsBloc, AdsState, AdStatus>(
                selector: (state) {
                  return state.adStatus;
                },
                builder: (context, state) {
                  return Text(
                    '${state.name.tr()} ${'ads'.tr()}',
                    style: context.appTextTheme.adsViewWebTitleTextStyle,
                  );
                },
              ),
              const SizedBox(
                height: 24,
              ),
              BlocConsumer<AdsBloc, AdsState>(
                listener: (context, state) {
                  checkStateStatusForError(context, state.status);
                },
                builder: (context, state) {
                  if (state.status is! LoadingStatus && state.ads.isEmpty) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 100,
                          width: double.maxFinite,
                        ),
                        Assets.images.raster.noAds.image(),
                        const SizedBox(
                          height: 24,
                        ),
                        Text('ads_not_found'.tr(), style: context.appTextTheme.noAdsTextStyle),
                        const SizedBox(
                          height: 100,
                        ),
                      ],
                    );
                  }
                  return Column(
                    children: [
                      ListView.builder(
                        itemCount: state.ads.length,
                        itemBuilder: (context, index) => AdsViewWebItem(
                          item: state.ads[index],
                        ),
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                      ),
                      if (state.status is LoadingStatus) const CircularProgressIndicator()
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
