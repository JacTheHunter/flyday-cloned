import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flyday_broker/features/notifications/pages/notifications_page.dart';

import '../../../common/blocs/cubit/app_overlays_cubit.dart';
import '../../../gen/assets.gen.dart';

class NotificationsButton extends StatelessWidget {
  const NotificationsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppOverlaysCubit, AppOverlayType>(
      builder: (context, type) {
        return PortalTarget(
          anchor: const Aligned(
            follower: Alignment.topRight,
            target: Alignment.bottomRight,
          ),
          portalFollower: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(12),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 420),
                child: SizedBox(
                    height: 500,
                    child: ClipRRect(borderRadius: BorderRadius.circular(12), child: const NotificationsPage())),
              ),
            ),
          ),
          visible: type == AppOverlayType.notificationsMenu,
          child: Center(child: Assets.images.vector.announcement.svg()),
        );
      },
    );
  }
}
