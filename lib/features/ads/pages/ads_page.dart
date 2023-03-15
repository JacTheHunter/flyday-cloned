import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/features/ads/widgets/ads_view_web.dart';

import '../../../common/services/notifications/widgets/notifications_listeners.dart';
import '../../../common/utils/check_state_status.dart';
import '../../../common/utils/platform.dart';
import '../../profile/blocs/profile_bloc/profile_bloc.dart';
import '../widgets/ads_view_mobile.dart';

class AdsPage extends StatelessWidget implements AutoRouteWrapper {
  const AdsPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        checkStateStatusForError(context, state.status);
      },
      child: NotificationListeners(
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (isWebMobileOrMobile) {
      return const AdsViewMobile();
    }

    return const AdsViewWeb();
  }
}
