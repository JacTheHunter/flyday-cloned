import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/features/profile/blocs/forgot_password_email_bloc/forgot_password_email_bloc.dart';
import 'package:flyday_broker/features/profile/widgets/forgot_password_view_mobile.dart';
import 'package:flyday_broker/features/profile/widgets/forgot_password_view_web.dart';
import '../../../common/utils/platform.dart';

class ForgotPasswordPage extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgotPasswordEmailBloc(
        repository: context.read(),
      ),
      child: this,
    );
  }

  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isWebMobileOrMobile) {
      return const ForgotPasswordViewMobile();
    }

    return const ForgotPasswordViewWeb();
  }
}
