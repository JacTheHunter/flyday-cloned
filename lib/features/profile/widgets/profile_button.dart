import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

import '../../../common/blocs/cubit/app_overlays_cubit.dart';
import '../../../common/widgets/app_image.dart';
import '../../../common/widgets/menu_view.dart';
import '../blocs/profile_bloc/profile_bloc.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state.profile == null) return const SizedBox();
        final profile = state.profile!;
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
                    child: const MenuView(),
                  ),
                ),
              ),
              visible: type == AppOverlayType.profileMenu,
              child: ElevatedButton(
                onPressed: () {
                  context.read<AppOverlaysCubit>().setType(AppOverlayType.profileMenu);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                  minimumSize: const Size(40, 40),
                  backgroundColor: context.appColors.profileInitialsBackgroundColor,
                ),
                child: profile.logo != null && profile.logo!.isNotEmpty
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: AppImage(
                          imageUrl: profile.logo!,
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      )
                    : Center(
                        child: Text(
                          profile.user.initials,
                          style: context.appTextTheme.profileInitialsTextStyle,
                        ),
                      ),
              ),
            );
          },
        );
      },
    );
  }
}
