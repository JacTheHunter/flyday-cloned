import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/check_state_status.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/utils/platform.dart';
import 'package:flyday_broker/features/currencies/models/currency.dart';
import 'package:flyday_broker/features/profile/blocs/edit_profile_bloc/edit_profile_bloc.dart';
import 'package:flyday_broker/features/profile/models/language.dart';
import 'package:flyday_broker/features/profile/pages/about_web_dialog.dart';
import 'package:flyday_broker/features/profile/widgets/menu_profile.dart';
import 'package:flyday_broker/gen/assets.gen.dart';
import 'package:flyday_broker/route/app_router.gr.dart';

import '../../features/chat/blocs/support_chat_unread_messages_count_bloc/support_chat_unread_messages_count_bloc.dart';
import '../../features/countries_cities/blocs/bloc/countries_cities_bloc.dart';
import '../../features/currencies/widgets/currency_picker_bottom_sheet.dart';
import '../../features/profile/blocs/profile_bloc/profile_bloc.dart';
import '../blocs/cubit/app_overlays_cubit.dart';
import '../utils/package_info.dart';
import 'app_bottom_sheet.dart';
import 'app_bottom_sheet_option.dart';
import 'menu_view_item.dart';

class MenuView extends StatelessWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          LimitedBox(
            maxHeight: isWebMobileOrMobile ? context.sizeHeight : double.infinity,
            child: Column(
              children: [
                isWebDesktop
                    ? _buildRest(context)
                    : Material(
                        // color: context.appColors.menuMobileCardBackgroundColor,
                        borderRadius: const BorderRadius.horizontal(
                          right: Radius.circular(24),
                        ),
                        // decoration: BoxDecoration(
                        //     borderRadius: const BorderRadius.horizontal(right: Radius.circular(24))),
                        child: _buildRest(context),
                      ),
                isWebDesktop
                    ? const SizedBox(
                        height: 36,
                      )
                    : const Spacer(),
                FutureBuilder(
                  future: getVersionText(),
                  builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                    if (snapshot.hasData) {
                      return Text(
                        '${'version'.tr()} ${(snapshot.data ?? '')}',
                        style: context.appTextTheme.aboutVersionTextStyle,
                      );
                    }
                    return Container();
                  },
                ),
                const SizedBox(
                  height: 36,
                )
              ],
            ),
          ),
          if (isWebDesktop)
            Positioned(
              top: 6,
              right: 6,
              child: IconButton(
                  onPressed: () {
                    if (context.read<AppOverlaysCubit>().state != AppOverlayType.none) {
                      context.read<AppOverlaysCubit>().setType(AppOverlayType.none);
                    }
                  },
                  icon: Icon(
                    Icons.close,
                    color: context.appColors.primaryTextColor,
                  )),
            ),
        ],
      ),
    );
  }

  Widget _buildRest(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MenuProfile(),
        const SizedBox(
          height: 8,
        ),
        const Divider(thickness: 1, height: 1),
        // MenuViewItem(
        //   icon: Assets.images.vector.menuHistory.svg(),
        //   label: 'offers_history'.tr(),
        //   onTap: () {},
        // ),
        // if (isWebMobileOrMobile)
        //   MenuViewItem(
        //     icon: Assets.images.vector.menuNotifications.svg(),
        //     label: 'notifications'.tr(),
        //     onTap: () {
        //       context.router.pop();
        //       context.router.push(const NotificationsRoute());
        //     },
        //   ),
        BlocSelector<ProfileBloc, ProfileState, Language?>(
          selector: (state) {
            return state.profile?.user.language;
          },
          builder: (context, language) {
            return MenuViewItem(
              icon: Assets.images.vector.menuGlobe.svg(),
              label: 'langugages'.tr(),
              onTap: () {
                final profile = context.read<ProfileBloc>().state.profile!;
                showModalBottomSheet(
                  context: context,
                  builder: (context) => MultiBlocProvider(
                    providers: [
                      BlocProvider(
                        create: (context) => CountriesCitiesBloc(
                          repository: context.read(),
                        )
                          ..add(const CountriesCitiesEvent.fetchCountries())
                          ..add(CountriesCitiesEvent.fetchCities(profile.country.id)),
                      ),
                      BlocProvider(
                        create: (context) => EditProfileBloc(
                          repository: context.read(),
                          profileBloc: context.read(),
                          countriesCitiesBloc: context.read(),
                          profile: profile,
                        ),
                      ),
                    ],
                    child: Builder(builder: (context) {
                      return AppBottomSheet(
                        child: Column(
                          children: Language.values
                              .map((l) => AppBottomSheetOption(
                                  isSelected: language == l,
                                  text: l.name.toUpperCase(),
                                  onTap: () {
                                    context.router.pop();
                                    context.read<EditProfileBloc>().add(
                                          EditProfileEvent.updateLanguage(l),
                                        );
                                  }))
                              .toList(),
                        ),
                      );
                    }),
                  ),
                  isScrollControlled: true,
                );
              },
              value: language?.name.toUpperCase(),
            );
          },
        ),
        BlocSelector<ProfileBloc, ProfileState, Currency?>(
          selector: (state) {
            return state.profile?.user.currency;
          },
          builder: (context, currency) {
            return MenuViewItem(
              icon: Assets.images.vector.menuDollar.svg(),
              label: 'currency'.tr(),
              onTap: () {
                final profile = context.read<ProfileBloc>().state.profile!;
                showModalBottomSheet(
                  context: context,
                  builder: (context) => MultiBlocProvider(
                    providers: [
                      BlocProvider(
                        create: (context) => CountriesCitiesBloc(
                          repository: context.read(),
                        )
                          ..add(const CountriesCitiesEvent.fetchCountries())
                          ..add(CountriesCitiesEvent.fetchCities(profile.country.id)),
                      ),
                      BlocProvider(
                        create: (context) => EditProfileBloc(
                          repository: context.read(),
                          profileBloc: context.read(),
                          countriesCitiesBloc: context.read(),
                          profile: profile,
                        ),
                      ),
                    ],
                    child: Builder(builder: (context) {
                      return CurrencyPickerBottomSheet(
                        selectedCurrency: currency,
                        onSelect: (value) => context.read<EditProfileBloc>().add(
                              EditProfileEvent.updateCurrency(value),
                            ),
                      );
                    }),
                  ),
                  isScrollControlled: true,
                );
              },
              value: currency?.formated,
            );
          },
        ),
        if (isWebMobileOrMobile)
          BlocConsumer<SupportChatUnreadMessagesCountBloc, SupportChatUnreadMessagesCountState>(
            listener: (context, state) {
              checkStateStatusForError(context, state.status);
            },
            builder: (context, state) {
              return MenuViewItem(
                icon: Assets.images.vector.menuSupport.svg(),
                label: 'support'.tr(),
                onTap: () {
                  context.router.pop();
                  final ownId = context.read<ProfileBloc>().state.profile?.id ?? 0;
                  context.router.push(SupportChatRoute(ownId: ownId));
                  context
                      .read<SupportChatUnreadMessagesCountBloc>()
                      .add(const SupportChatUnreadMessagesCountEvent.chatOpened());
                },
                count: state.count > 0 ? state.count : null,
              );
            },
          ),
        MenuViewItem(
          icon: Assets.images.vector.menuInfo.svg(),
          label: 'about'.tr(),
          hasBottomBorder: false,
          onTap: () {
            // context.router.pop();
            if (isWebMobileOrMobile) {
              context.router.push(const AboutRoute());
            } else {
              showDialog(
                context: context,
                builder: (context) => const AboutWebDialog(),
              );
            }
          },
        ),
        // const SizedBox(
        //   height: 8,
        // ),
      ],
    );
  }
}
