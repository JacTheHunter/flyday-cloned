import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/ads/blocs/ads_bloc/ads_bloc.dart';
import 'package:flyday_broker/features/ads/repositories/ads_repository.dart';
import 'package:flyday_broker/features/chat/blocs/support_chat_unread_messages_count_bloc/support_chat_unread_messages_count_bloc.dart';
import 'package:flyday_broker/features/currencies/data_sources/currencies_api_client.dart';
import 'package:flyday_broker/features/currencies/repositories/i_currencies_repository.dart';
import 'package:flyday_broker/features/profile/blocs/profile_bloc/profile_bloc.dart';
import 'package:flyday_broker/features/special_conditions/data_sources/special_conditions_api_client.dart';

import '../../features/ads/data_sources/ads_api_client.dart';
import '../../features/ads/repositories/i_ads_repository.dart';
import '../../features/chat/data_sources/chat_api_client.dart';
import '../../features/chat/repositories/chat_repository.dart';
import '../../features/chat/repositories/i_chat_repository.dart';
import '../../features/countries_cities/data_sources/countries_cities_api_client.dart';
import '../../features/countries_cities/repositories/countries_cities_repository.dart';
import '../../features/countries_cities/repositories/i_countries_cities_repository.dart';
import '../../features/currencies/blocs/currencies_bloc/currencies_bloc.dart';
import '../../features/currencies/repositories/currencies_repository.dart';
import '../../features/offers/blocs/offers_bloc/offers_bloc.dart';
import '../../features/offers/data_sources/offers_api_client.dart';
import '../../features/offers/repositories/i_offers_repository.dart';
import '../../features/offers/repositories/offers_repository.dart';
import '../../features/profile/data_sources/profile_api_client.dart';
import '../../features/profile/repositories/i_profile_repository.dart';
import '../../features/profile/repositories/profile_repository.dart';
import '../../features/special_conditions/repositories/i_special_conditions_repository.dart';
import '../../features/special_conditions/repositories/special_conditions_repository.dart';
import '../blocs/cubit/app_overlays_cubit.dart';
import '../services/api_serice.dart';

class DashBoardWrapper extends StatelessWidget implements AutoRouteWrapper {
  const DashBoardWrapper({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: context.appColors.appBarBackgroundColor,
          elevation: 0,
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: context.appColors.appBarBackgroundColor,
      ),
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => ProfileApiClient(context.read<ApiService>().dio),
          ),
          RepositoryProvider(
            create: (context) => AdsApiClient(context.read<ApiService>().dio),
          ),
          RepositoryProvider(
            create: (context) => CurrenciesApiClient(context.read<ApiService>().dio),
          ),
          RepositoryProvider(
            create: (context) => SpecialConditionsApiClient(context.read<ApiService>().dio),
          ),
          RepositoryProvider<OffersApiClient>(
            create: (context) => OffersApiClient(context.read<ApiService>().dio),
          ),
          RepositoryProvider<IOffersRepository>(
            create: (context) => OffersRepository(apiClient: context.read()),
          ),
          RepositoryProvider(
            create: ((context) => CountriesCitiesApiClient(context.read<ApiService>().dio)),
          ),
          RepositoryProvider<IProfileRepository>(
            create: (context) => ProfileRepository(
              apiClient: context.read(),
            ),
          ),
          RepositoryProvider<IAdsRepository>(
            create: (context) => AdsRepository(apiClient: context.read()),
          ),
          RepositoryProvider<ICurrenciesRepository>(
            create: (context) => CurrenciesRepository(apiClient: context.read()),
          ),
          RepositoryProvider<ISpecialConditionsRepository>(
            create: (context) => SpecialConditionsRepository(apiClient: context.read()),
          ),
          RepositoryProvider<ICountriesCitiesRepository>(
            create: (context) => CountriesCitiesRepository(
              apiClient: context.read(),
            ),
          ),
          RepositoryProvider(
            create: (context) => ChatApiClient(context.read<ApiService>().dio),
          ),
          RepositoryProvider<IChatRepository>(
            create: (context) => ChatRepository(apiClient: context.read()),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => AppOverlaysCubit(),
            ),
            BlocProvider(
              create: (context) => AdsBloc(repository: context.read())..add(const AdsEvent.fetchAds()),
            ),
            BlocProvider(
              create: (context) => OffersBloc(repository: context.read()),
            ),
            BlocProvider(
              create: (context) => CurrenciesBloc(repository: context.read())..add(const CurrenciesEvent.fetch()),
            ),
            BlocProvider(
              create: (context) => ProfileBloc(repository: context.read(), authenticationBloc: context.read())
                ..add(const ProfileEvent.get()),
            ),
            BlocProvider(
              create: (context) => SupportChatUnreadMessagesCountBloc(repository: context.read())
                ..add(const SupportChatUnreadMessagesCountEvent.get()),
            ),
          ],
          child: Builder(builder: (context) {
            return Listener(
              onPointerUp: (event) {
                if (context.read<AppOverlaysCubit>().state != AppOverlayType.none) {
                  context.read<AppOverlaysCubit>().setType(AppOverlayType.none);
                }
              },
              child: this,
            );
          }),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
