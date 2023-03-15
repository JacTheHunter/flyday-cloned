import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/features/profile/widgets/new_password_view_web.dart';
import '../../../common/utils/platform.dart';
import '../blocs/forgot_password_reset_bloc/forgot_password_reset_bloc.dart';
import '../widgets/new_password_view_mobile.dart';

class NewPasswordPage extends StatelessWidget implements AutoRouteWrapper {
  final String? email;

  const NewPasswordPage({Key? key, this.email}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgotPasswordResetBloc(
        repository: context.read(),
        email: email,
      ),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (isWebMobileOrMobile) {
      return const NewPasswordViewMobile();
    }

    return const NewPasswordViewWeb();
  }
}
