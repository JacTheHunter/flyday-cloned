import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/aircrafts_global_bloc/aircrafts_global_bloc.dart';
import '../blocs/aircrafts_local_bloc/aircrafts_local_bloc.dart';
import '../widgets/aircraft_search_view_mobile.dart';

class AircraftSeachPage extends StatelessWidget implements AutoRouteWrapper {
  const AircraftSeachPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AircraftsGlobalBloc>(
          create: (context) =>
              AircraftsGlobalBloc(repository: context.read())..add(const AircraftsGlobalEvent.setSearchPhrase('')),
        ),
        BlocProvider<AircraftsLocalBloc>(
          create: (context) =>
              AircraftsLocalBloc(repository: context.read())..add(const AircraftsLocalEvent.setSearchPhrase('')),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AircraftSearchViewMobile();
  }
}
