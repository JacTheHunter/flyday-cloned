import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/features/countries_cities/blocs/bloc/countries_cities_bloc.dart';
import 'package:flyday_broker/features/profile/blocs/edit_profile_bloc/edit_profile_bloc.dart';
import 'package:flyday_broker/features/profile/models/profile.dart';

import '../../../common/utils/platform.dart';
import '../widgets/edit_profile_view_mobile.dart';
import '../widgets/edit_profile_view_web.dart';

class EditProfilePage extends StatelessWidget implements AutoRouteWrapper {
  final Profile profile;
  const EditProfilePage({Key? key, required this.profile}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => CountriesCitiesBloc(
        repository: context.read(),
      )
        ..add(const CountriesCitiesEvent.fetchCountries())
        ..add(CountriesCitiesEvent.fetchCities(profile.country.id)),
      child: Builder(builder: (context) {
        return BlocProvider(
          create: (context) => EditProfileBloc(
            repository: context.read(),
            profileBloc: context.read(),
            countriesCitiesBloc: context.read(),
            profile: profile,
          ),
          child: this,
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (isWebMobileOrMobile) {
      return const EditProfileViewMobile();
    }

    return const EditProfileViewMWeb();
  }
}
