import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/features/profile/widgets/login_view_mobile.dart';
import 'package:flyday_broker/features/profile/widgets/login_view_web.dart';
import '../../../common/utils/platform.dart';
import '../blocs/login/login_bloc.dart';

class LoginPage extends StatelessWidget implements AutoRouteWrapper {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(
        repository: context.read(),
        authenticationBloc: context.read(),
        notificationsService: context.read(),
      ),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (isWebMobileOrMobile) {
      return const LoginViewMobile();
    }

    return const LoginViewWeb();
  }
}
