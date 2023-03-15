// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i22;
import 'package:flutter/material.dart' as _i23;
import 'package:flyday_broker/common/pages/dashboard_wrapper_page.dart' as _i2;
import 'package:flyday_broker/features/ads/models/ad.dart' as _i25;
import 'package:flyday_broker/features/ads/pages/ad_page.dart' as _i11;
import 'package:flyday_broker/features/ads/pages/ads_page.dart' as _i10;
import 'package:flyday_broker/features/ads/pages/offer_page.dart' as _i14;
import 'package:flyday_broker/features/aircrafts/pages/aircraft_seach_page.dart'
    as _i21;
import 'package:flyday_broker/features/authentication/pages/authentication_wrapper_page.dart'
    as _i1;
import 'package:flyday_broker/features/chat/pages/chat_page.dart' as _i12;
import 'package:flyday_broker/features/chat/pages/support_chat_page.dart'
    as _i13;
import 'package:flyday_broker/features/file_manager/models/document.dart'
    as _i26;
import 'package:flyday_broker/features/file_manager/pages/my_documents_page.dart'
    as _i19;
import 'package:flyday_broker/features/notifications/pages/notifications_page.dart'
    as _i17;
import 'package:flyday_broker/features/offers/pages/offer_editor_page.dart'
    as _i20;
import 'package:flyday_broker/features/offers/pages/offer_editor_wrapper_page.dart'
    as _i18;
import 'package:flyday_broker/features/profile/models/profile.dart' as _i24;
import 'package:flyday_broker/features/profile/pages/about_page.dart' as _i16;
import 'package:flyday_broker/features/profile/pages/create_account_page.dart'
    as _i9;
import 'package:flyday_broker/features/profile/pages/edit_profile_page.dart'
    as _i15;
import 'package:flyday_broker/features/profile/pages/forgot_password_page.dart'
    as _i4;
import 'package:flyday_broker/features/profile/pages/login_page.dart' as _i3;
import 'package:flyday_broker/features/profile/pages/new_password_page.dart'
    as _i5;
import 'package:flyday_broker/features/profile/pages/sign_up_page.dart' as _i8;
import 'package:flyday_broker/features/profile/pages/sign_up_wrapper_page.dart'
    as _i7;
import 'package:flyday_broker/features/profile/pages/verify_code_page.dart'
    as _i6;

class AppRouter extends _i22.RootStackRouter {
  AppRouter([_i23.GlobalKey<_i23.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i22.PageFactory> pagesMap = {
    AuthenticationRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i22.WrappedRoute(child: const _i1.AuthenticationWrapperPage()),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i22.WrappedRoute(child: const _i2.DashBoardWrapper()),
      );
    },
    LoginRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i22.WrappedRoute(child: const _i3.LoginPage()),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i22.WrappedRoute(child: const _i4.ForgotPasswordPage()),
      );
    },
    NewPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<NewPasswordRouteArgs>(
          orElse: () => const NewPasswordRouteArgs());
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i22.WrappedRoute(
            child: _i5.NewPasswordPage(
          key: args.key,
          email: args.email,
        )),
      );
    },
    VerifyCodeRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.VerifyCodePage(),
      );
    },
    SignUpWrapperRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i22.WrappedRoute(child: const _i7.SignUpWrapperPage()),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.SignUpPage(),
      );
    },
    CreateAccountRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.CreateAccountPage(),
      );
    },
    AdsRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i22.WrappedRoute(child: const _i10.AdsPage()),
      );
    },
    AdRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i11.AdPage(),
      );
    },
    ChatRoute.name: (routeData) {
      final args = routeData.argsAs<ChatRouteArgs>();
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i22.WrappedRoute(
            child: _i12.ChatPage(
          key: args.key,
          chatId: args.chatId,
          ownId: args.ownId,
        )),
      );
    },
    SupportChatRoute.name: (routeData) {
      final args = routeData.argsAs<SupportChatRouteArgs>();
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i22.WrappedRoute(
            child: _i13.SupportChatPage(
          key: args.key,
          ownId: args.ownId,
        )),
      );
    },
    OfferRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i14.OfferPage(),
      );
    },
    EditProfileRoute.name: (routeData) {
      final args = routeData.argsAs<EditProfileRouteArgs>();
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i22.WrappedRoute(
            child: _i15.EditProfilePage(
          key: args.key,
          profile: args.profile,
        )),
      );
    },
    AboutRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i16.AboutPage(),
      );
    },
    NotificationsRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i17.NotificationsPage(),
      );
    },
    OfferEditorWrapperRoute.name: (routeData) {
      final args = routeData.argsAs<OfferEditorWrapperRouteArgs>();
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i22.WrappedRoute(
            child: _i18.OfferEditorWrapperPage(
          key: args.key,
          ad: args.ad,
        )),
      );
    },
    MyDocumentsRoute.name: (routeData) {
      final args = routeData.argsAs<MyDocumentsRouteArgs>();
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i22.WrappedRoute(
            child: _i19.MyDocumentsPage(
          key: args.key,
          isSelectionModeAvailable: args.isSelectionModeAvailable,
          onDocumentsSelected: args.onDocumentsSelected,
        )),
      );
    },
    OfferEditorRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i20.OfferEditorPage(),
      );
    },
    AircraftSeachRoute.name: (routeData) {
      return _i22.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i22.WrappedRoute(child: const _i21.AircraftSeachPage()),
      );
    },
  };

  @override
  List<_i22.RouteConfig> get routes => [
        _i22.RouteConfig(
          AuthenticationRoute.name,
          path: '/authentication',
          children: [
            _i22.RouteConfig(
              '#redirect',
              path: '',
              parent: AuthenticationRoute.name,
              redirectTo: 'login',
              fullMatch: true,
            ),
            _i22.RouteConfig(
              LoginRoute.name,
              path: 'login',
              parent: AuthenticationRoute.name,
            ),
            _i22.RouteConfig(
              ForgotPasswordRoute.name,
              path: 'forgot_password',
              parent: AuthenticationRoute.name,
            ),
            _i22.RouteConfig(
              NewPasswordRoute.name,
              path: 'new_password',
              parent: AuthenticationRoute.name,
            ),
            _i22.RouteConfig(
              VerifyCodeRoute.name,
              path: 'verify_code',
              parent: AuthenticationRoute.name,
            ),
            _i22.RouteConfig(
              SignUpWrapperRoute.name,
              path: 'sign_up',
              parent: AuthenticationRoute.name,
              children: [
                _i22.RouteConfig(
                  SignUpRoute.name,
                  path: '',
                  parent: SignUpWrapperRoute.name,
                ),
                _i22.RouteConfig(
                  CreateAccountRoute.name,
                  path: 'create_account',
                  parent: SignUpWrapperRoute.name,
                ),
              ],
            ),
            _i22.RouteConfig(
              '*#redirect',
              path: '*',
              parent: AuthenticationRoute.name,
              redirectTo: 'login',
              fullMatch: true,
            ),
          ],
        ),
        _i22.RouteConfig(
          DashboardRoute.name,
          path: '/dashboard',
          children: [
            _i22.RouteConfig(
              AdsRoute.name,
              path: '',
              parent: DashboardRoute.name,
            ),
            _i22.RouteConfig(
              AdRoute.name,
              path: 'ad',
              parent: DashboardRoute.name,
            ),
            _i22.RouteConfig(
              ChatRoute.name,
              path: 'chat',
              parent: DashboardRoute.name,
            ),
            _i22.RouteConfig(
              SupportChatRoute.name,
              path: 'support_chat',
              parent: DashboardRoute.name,
            ),
            _i22.RouteConfig(
              OfferRoute.name,
              path: 'offer',
              parent: DashboardRoute.name,
            ),
            _i22.RouteConfig(
              EditProfileRoute.name,
              path: 'profile',
              parent: DashboardRoute.name,
            ),
            _i22.RouteConfig(
              AboutRoute.name,
              path: 'about',
              parent: DashboardRoute.name,
            ),
            _i22.RouteConfig(
              NotificationsRoute.name,
              path: 'notifications',
              parent: DashboardRoute.name,
            ),
            _i22.RouteConfig(
              OfferEditorWrapperRoute.name,
              path: 'offer',
              parent: DashboardRoute.name,
              children: [
                _i22.RouteConfig(
                  OfferEditorRoute.name,
                  path: '',
                  parent: OfferEditorWrapperRoute.name,
                ),
                _i22.RouteConfig(
                  AircraftSeachRoute.name,
                  path: 'aircraft_search',
                  parent: OfferEditorWrapperRoute.name,
                ),
              ],
            ),
            _i22.RouteConfig(
              MyDocumentsRoute.name,
              path: 'my_documents',
              parent: DashboardRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.AuthenticationWrapperPage]
class AuthenticationRoute extends _i22.PageRouteInfo<void> {
  const AuthenticationRoute({List<_i22.PageRouteInfo>? children})
      : super(
          AuthenticationRoute.name,
          path: '/authentication',
          initialChildren: children,
        );

  static const String name = 'AuthenticationRoute';
}

/// generated route for
/// [_i2.DashBoardWrapper]
class DashboardRoute extends _i22.PageRouteInfo<void> {
  const DashboardRoute({List<_i22.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          path: '/dashboard',
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i22.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: 'login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.ForgotPasswordPage]
class ForgotPasswordRoute extends _i22.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(
          ForgotPasswordRoute.name,
          path: 'forgot_password',
        );

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i5.NewPasswordPage]
class NewPasswordRoute extends _i22.PageRouteInfo<NewPasswordRouteArgs> {
  NewPasswordRoute({
    _i23.Key? key,
    String? email,
  }) : super(
          NewPasswordRoute.name,
          path: 'new_password',
          args: NewPasswordRouteArgs(
            key: key,
            email: email,
          ),
        );

  static const String name = 'NewPasswordRoute';
}

class NewPasswordRouteArgs {
  const NewPasswordRouteArgs({
    this.key,
    this.email,
  });

  final _i23.Key? key;

  final String? email;

  @override
  String toString() {
    return 'NewPasswordRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i6.VerifyCodePage]
class VerifyCodeRoute extends _i22.PageRouteInfo<void> {
  const VerifyCodeRoute()
      : super(
          VerifyCodeRoute.name,
          path: 'verify_code',
        );

  static const String name = 'VerifyCodeRoute';
}

/// generated route for
/// [_i7.SignUpWrapperPage]
class SignUpWrapperRoute extends _i22.PageRouteInfo<void> {
  const SignUpWrapperRoute({List<_i22.PageRouteInfo>? children})
      : super(
          SignUpWrapperRoute.name,
          path: 'sign_up',
          initialChildren: children,
        );

  static const String name = 'SignUpWrapperRoute';
}

/// generated route for
/// [_i8.SignUpPage]
class SignUpRoute extends _i22.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i9.CreateAccountPage]
class CreateAccountRoute extends _i22.PageRouteInfo<void> {
  const CreateAccountRoute()
      : super(
          CreateAccountRoute.name,
          path: 'create_account',
        );

  static const String name = 'CreateAccountRoute';
}

/// generated route for
/// [_i10.AdsPage]
class AdsRoute extends _i22.PageRouteInfo<void> {
  const AdsRoute()
      : super(
          AdsRoute.name,
          path: '',
        );

  static const String name = 'AdsRoute';
}

/// generated route for
/// [_i11.AdPage]
class AdRoute extends _i22.PageRouteInfo<void> {
  const AdRoute()
      : super(
          AdRoute.name,
          path: 'ad',
        );

  static const String name = 'AdRoute';
}

/// generated route for
/// [_i12.ChatPage]
class ChatRoute extends _i22.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    _i23.Key? key,
    required int chatId,
    required int ownId,
  }) : super(
          ChatRoute.name,
          path: 'chat',
          args: ChatRouteArgs(
            key: key,
            chatId: chatId,
            ownId: ownId,
          ),
        );

  static const String name = 'ChatRoute';
}

class ChatRouteArgs {
  const ChatRouteArgs({
    this.key,
    required this.chatId,
    required this.ownId,
  });

  final _i23.Key? key;

  final int chatId;

  final int ownId;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, chatId: $chatId, ownId: $ownId}';
  }
}

/// generated route for
/// [_i13.SupportChatPage]
class SupportChatRoute extends _i22.PageRouteInfo<SupportChatRouteArgs> {
  SupportChatRoute({
    _i23.Key? key,
    required int ownId,
  }) : super(
          SupportChatRoute.name,
          path: 'support_chat',
          args: SupportChatRouteArgs(
            key: key,
            ownId: ownId,
          ),
        );

  static const String name = 'SupportChatRoute';
}

class SupportChatRouteArgs {
  const SupportChatRouteArgs({
    this.key,
    required this.ownId,
  });

  final _i23.Key? key;

  final int ownId;

  @override
  String toString() {
    return 'SupportChatRouteArgs{key: $key, ownId: $ownId}';
  }
}

/// generated route for
/// [_i14.OfferPage]
class OfferRoute extends _i22.PageRouteInfo<void> {
  const OfferRoute()
      : super(
          OfferRoute.name,
          path: 'offer',
        );

  static const String name = 'OfferRoute';
}

/// generated route for
/// [_i15.EditProfilePage]
class EditProfileRoute extends _i22.PageRouteInfo<EditProfileRouteArgs> {
  EditProfileRoute({
    _i23.Key? key,
    required _i24.Profile profile,
  }) : super(
          EditProfileRoute.name,
          path: 'profile',
          args: EditProfileRouteArgs(
            key: key,
            profile: profile,
          ),
        );

  static const String name = 'EditProfileRoute';
}

class EditProfileRouteArgs {
  const EditProfileRouteArgs({
    this.key,
    required this.profile,
  });

  final _i23.Key? key;

  final _i24.Profile profile;

  @override
  String toString() {
    return 'EditProfileRouteArgs{key: $key, profile: $profile}';
  }
}

/// generated route for
/// [_i16.AboutPage]
class AboutRoute extends _i22.PageRouteInfo<void> {
  const AboutRoute()
      : super(
          AboutRoute.name,
          path: 'about',
        );

  static const String name = 'AboutRoute';
}

/// generated route for
/// [_i17.NotificationsPage]
class NotificationsRoute extends _i22.PageRouteInfo<void> {
  const NotificationsRoute()
      : super(
          NotificationsRoute.name,
          path: 'notifications',
        );

  static const String name = 'NotificationsRoute';
}

/// generated route for
/// [_i18.OfferEditorWrapperPage]
class OfferEditorWrapperRoute
    extends _i22.PageRouteInfo<OfferEditorWrapperRouteArgs> {
  OfferEditorWrapperRoute({
    _i23.Key? key,
    required _i25.Ad ad,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          OfferEditorWrapperRoute.name,
          path: 'offer',
          args: OfferEditorWrapperRouteArgs(
            key: key,
            ad: ad,
          ),
          initialChildren: children,
        );

  static const String name = 'OfferEditorWrapperRoute';
}

class OfferEditorWrapperRouteArgs {
  const OfferEditorWrapperRouteArgs({
    this.key,
    required this.ad,
  });

  final _i23.Key? key;

  final _i25.Ad ad;

  @override
  String toString() {
    return 'OfferEditorWrapperRouteArgs{key: $key, ad: $ad}';
  }
}

/// generated route for
/// [_i19.MyDocumentsPage]
class MyDocumentsRoute extends _i22.PageRouteInfo<MyDocumentsRouteArgs> {
  MyDocumentsRoute({
    _i23.Key? key,
    required bool isSelectionModeAvailable,
    required void Function(List<_i26.Document>) onDocumentsSelected,
  }) : super(
          MyDocumentsRoute.name,
          path: 'my_documents',
          args: MyDocumentsRouteArgs(
            key: key,
            isSelectionModeAvailable: isSelectionModeAvailable,
            onDocumentsSelected: onDocumentsSelected,
          ),
        );

  static const String name = 'MyDocumentsRoute';
}

class MyDocumentsRouteArgs {
  const MyDocumentsRouteArgs({
    this.key,
    required this.isSelectionModeAvailable,
    required this.onDocumentsSelected,
  });

  final _i23.Key? key;

  final bool isSelectionModeAvailable;

  final void Function(List<_i26.Document>) onDocumentsSelected;

  @override
  String toString() {
    return 'MyDocumentsRouteArgs{key: $key, isSelectionModeAvailable: $isSelectionModeAvailable, onDocumentsSelected: $onDocumentsSelected}';
  }
}

/// generated route for
/// [_i20.OfferEditorPage]
class OfferEditorRoute extends _i22.PageRouteInfo<void> {
  const OfferEditorRoute()
      : super(
          OfferEditorRoute.name,
          path: '',
        );

  static const String name = 'OfferEditorRoute';
}

/// generated route for
/// [_i21.AircraftSeachPage]
class AircraftSeachRoute extends _i22.PageRouteInfo<void> {
  const AircraftSeachRoute()
      : super(
          AircraftSeachRoute.name,
          path: 'aircraft_search',
        );

  static const String name = 'AircraftSeachRoute';
}
