import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flyday_broker/common/blocs/app_theme_cubit/app_theme_cubit.dart';
import 'package:flyday_broker/common/services/api_serice.dart';
import 'package:flyday_broker/common/services/connectivity_service.dart';
import 'package:flyday_broker/common/services/media/media_service.dart';
import 'package:flyday_broker/common/services/permission/i_permission_service.dart';
import 'package:flyday_broker/common/services/permission/permission_service.dart';
import 'package:flyday_broker/config/theme/app_theme.dart';
import 'package:flyday_broker/gen/fonts.gen.dart';
import 'package:flyday_broker/route/app_router.gr.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'common/services/media/i_media_service.dart';
import 'common/services/notifications/data_sources/notifications_api_client.dart';
import 'common/services/notifications/notifications_service.dart';
import 'common/utils/platform.dart';
import 'features/authentication/blocs/bloc/authentication_bloc.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('app_settings');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent));
    return DevicePreview(
      enabled: false,
      builder: (context) => EasyLocalization(
        supportedLocales: const [Locale('en')],
        path: 'assets/translations', // <-- change the path of the translation files
        fallbackLocale: const Locale('en'),

        child: MultiRepositoryProvider(
          providers: [
            RepositoryProvider(
              create: ((context) => ConnectivityService()),
            ),
            RepositoryProvider<IPermissionService>(
              create: ((context) => PermissionService()),
            ),
            RepositoryProvider<IMediaService>(
              create: ((context) => MediaService(permissionService: context.read())),
            ),
            RepositoryProvider(
              create: (context) => AppThemeCubit(),
            ),
          ],
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => AuthenticationBloc()
                  ..add(
                    const AuthenticationEvent.started(),
                  ),
              ),
            ],
            child: MultiRepositoryProvider(
              providers: [
                RepositoryProvider(
                  create: (context) => ApiService(
                    authenticationBloc: context.read(),
                    connectivityService: context.read(),
                  ),
                ),
                RepositoryProvider(
                  create: (context) => NotificationsApiClient(context.read<ApiService>().dio),
                ),
                RepositoryProvider(
                  lazy: false,
                  create: (context) => NotificationsService(notificationsApiClient: context.read())..init(),
                ),
              ],
              child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
                builder: (context, authState) {
                  return BlocBuilder<AppThemeCubit, AppTheme>(
                    builder: (context, theme) => Portal(
                      child: MaterialApp.router(
                        routerDelegate: AutoRouterDelegate.declarative(
                          _appRouter,
                          routes: (_) => [
                            (authState is Authenticated) ? const DashboardRoute() : const AuthenticationRoute(),
                          ],
                        ),
                        routeInformationParser: _appRouter.defaultRouteParser(),
                        debugShowCheckedModeBanner: false,
                        localizationsDelegates: context.localizationDelegates,
                        supportedLocales: context.supportedLocales,
                        locale: context.locale,
                        title: 'FlyDay Broker',
                        theme: ThemeData(
                          dialogTheme: DialogTheme(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            titleTextStyle: theme.textTheme.dialogTitleTextStyle,
                            contentTextStyle: theme.textTheme.dialogContentTextStyle,
                          ),
                          bottomSheetTheme: const BottomSheetThemeData(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                            ),
                          ),
                          dividerColor: theme.appColors.dividerColor,
                          appBarTheme: AppBarTheme(
                            backgroundColor: theme.appColors.appBarAuthenticationBackgroundColor,
                            iconTheme: IconThemeData(
                              color: theme.appColors.appBarIconColor,
                            ),
                            titleTextStyle: theme.textTheme.appBarTitleTextStyle,
                            centerTitle: true,
                            elevation: 0,
                          ),
                          primarySwatch: theme.appColors.primarySwatch,
                          scaffoldBackgroundColor: theme.appColors.scaffoldBackgroundColor,
                          fontFamily: FontFamily.ubuntu,
                          textTheme: const TextTheme()
                              .apply(bodyColor: theme.appColors.primaryTextColor)
                              .copyWith(subtitle1: theme.textTheme.inputTextStyle),
                          inputDecorationTheme: InputDecorationTheme(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: theme.appColors.inputBorderColor,
                                width: 1,
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: theme.appColors.inputBorderColor,
                                width: 1,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: theme.appColors.errorColor,
                                width: 1,
                              ),
                            ),
                            fillColor: isWebMobileOrMobile
                                ? theme.appColors.inputFillMobileColor
                                : theme.appColors.inputFillWebColor,
                            hintStyle: theme.textTheme.inputHintTextStyle,
                            filled: true,
                            errorStyle: theme.textTheme.inputErrorTextStyle,
                          ),
                          outlinedButtonTheme: OutlinedButtonThemeData(
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all(const EdgeInsets.all(18)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                              shadowColor: MaterialStateProperty.all(theme.appColors.elevatedButtonShadowColor),
                              textStyle: MaterialStateProperty.all(theme.textTheme.outlinedTextStyle),
                              elevation: MaterialStateProperty.all(8),
                            ),
                          ),
                          elevatedButtonTheme: ElevatedButtonThemeData(
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all(const EdgeInsets.all(18)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                              shadowColor: MaterialStateProperty.all(theme.appColors.elevatedButtonShadowColor),
                              textStyle: MaterialStateProperty.all(theme.textTheme.elevatedButtonTextStyle),
                              elevation: MaterialStateProperty.all(8),
                            ),
                          ),
                          checkboxTheme: CheckboxThemeData(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}
