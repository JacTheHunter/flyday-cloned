import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/services/api_serice.dart';
import 'package:flyday_broker/features/profile/data_sources/profile_api_client.dart';
import 'package:flyday_broker/features/profile/repositories/profile_repository.dart';
import '../../profile/repositories/i_profile_repository.dart';

class AuthenticationWrapperPage extends StatelessWidget implements AutoRouteWrapper {
  const AuthenticationWrapperPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => ProfileApiClient(context.read<ApiService>().dio),
        ),
      ],
      child: Builder(
        builder: (context) {
          return MultiRepositoryProvider(
            providers: [
              RepositoryProvider<IProfileRepository>(
                create: (context) => ProfileRepository(
                  apiClient: context.read(),
                ),
              ),
            ],
            child: this,
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
