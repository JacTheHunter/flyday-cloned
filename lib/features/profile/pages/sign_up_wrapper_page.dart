import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/services/api_serice.dart';
import 'package:flyday_broker/features/countries_cities/blocs/bloc/countries_cities_bloc.dart';
import 'package:flyday_broker/features/countries_cities/data_sources/countries_cities_api_client.dart';
import 'package:flyday_broker/features/countries_cities/repositories/countries_cities_repository.dart';
import '../../countries_cities/repositories/i_countries_cities_repository.dart';
import '../blocs/sign_up_bloc/sign_up_bloc.dart';

class SignUpWrapperPage extends StatelessWidget implements AutoRouteWrapper {
  const SignUpWrapperPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: ((context) => CountriesCitiesApiClient(context.read<ApiService>().dio)),
        ),
      ],
      child: Builder(
        builder: (context) {
          return MultiRepositoryProvider(
            providers: [
              RepositoryProvider<ICountriesCitiesRepository>(
                create: (context) => CountriesCitiesRepository(
                  apiClient: context.read(),
                ),
              ),
            ],
            child: Builder(
              builder: (context) {
                return BlocProvider(
                  create: (context) =>
                      CountriesCitiesBloc(repository: context.read())..add(const CountriesCitiesEvent.fetchCountries()),
                  child: Builder(
                    builder: (context) {
                      return BlocProvider(
                        create: (context) => SignUpBloc(
                          countriesCitiesBloc: context.read(),
                          repository: context.read(),
                          authenticationBloc: context.read(),
                        ),
                        child: this,
                      );
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
