import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/widgets/app_image.dart';
import 'package:flyday_broker/features/profile/blocs/profile_bloc/profile_bloc.dart';

import '../../../common/blocs/cubit/app_overlays_cubit.dart';
import '../../../route/app_router.gr.dart';

class MenuProfile extends StatelessWidget {
  const MenuProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            if (state.profile == null) return const SizedBox();
            final profile = state.profile!;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                profile.logo != null && profile.logo!.isNotEmpty
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: AppImage(
                          imageUrl: profile.logo!,
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      )
                    : Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: context.appColors.menuProfileAvatarBackgroundColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            profile.user.initials,
                            style: context.appTextTheme.menuProfileAvatarTextStyle,
                          ),
                        ),
                      ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        profile.user.fullName.toUpperCase(),
                        style: context.appTextTheme.menuProfileNameTextStyle,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                OutlinedButton.icon(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
                    elevation: MaterialStateProperty.all(0),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 16,
                      ),

                      // elevation: 0,
                    ),
                  ),
                  onPressed: () {
                    final profile = context.read<ProfileBloc>().state.profile;
                    if (profile != null) {
                      context.router.push(EditProfileRoute(profile: profile));
                    }
                    if (context.read<AppOverlaysCubit>().state != AppOverlayType.none) {
                      context.read<AppOverlaysCubit>().setType(AppOverlayType.none);
                    }
                  },
                  icon: Icon(
                    Icons.edit_outlined,
                    size: 16,
                    color: context.appColors.menuProfileEditButtonIconColor,
                  ),
                  label: Text(
                    'edit_profile'.tr(),
                    style: context.appTextTheme.menuProfileEditButtonTextStyle,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
