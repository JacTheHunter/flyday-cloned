import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/features/offers/blocs/offer_editor_bloc/offer_editor_bloc.dart';

import '../../../common/services/api_serice.dart';
import '../../ads/models/ad.dart';
import '../../aircrafts/blocs/aircraft_types_bloc/aircraft_types_bloc.dart';
import '../../aircrafts/data_sources/aircrafts_api_client.dart';
import '../../aircrafts/repositories/aircrafts_repository.dart';
import '../../aircrafts/repositories/i_aircrafts_repository.dart';
import '../../special_conditions/blocs/special_conditions_bloc/special_conditions_bloc.dart';

class OfferEditorWrapperPage extends StatelessWidget implements AutoRouteWrapper {
  final Ad ad;
  const OfferEditorWrapperPage({Key? key, required this.ad}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AircraftsApiClient>(
          create: (context) => AircraftsApiClient(context.read<ApiService>().dio),
        ),
        RepositoryProvider<IAircraftsRepository>(
          create: (context) => AircraftsRepository(apiClient: context.read()),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => OfferEditorBloc(repository: context.read(), ad: ad),
          ),
          BlocProvider(
            create: (context) =>
                SpecialConditionsBloc(repository: context.read())..add(const SpecialConditionsEvent.fetch()),
          ),
          BlocProvider<AircraftTypesBloc>(
            create: (context) => AircraftTypesBloc(repository: context.read())
              ..add(
                const AircraftTypesEvent.fetch(),
              ),
          ),
        ],
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
