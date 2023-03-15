import 'package:auto_route/auto_route.dart';
import 'package:flyday_broker/common/pages/dashboard_wrapper_page.dart';
import 'package:flyday_broker/features/ads/pages/ads_page.dart';
import 'package:flyday_broker/features/ads/pages/offer_page.dart';
import 'package:flyday_broker/features/authentication/pages/authentication_wrapper_page.dart';
import 'package:flyday_broker/features/chat/pages/chat_page.dart';
import 'package:flyday_broker/features/chat/pages/support_chat_page.dart';
import 'package:flyday_broker/features/file_manager/pages/my_documents_page.dart';
import 'package:flyday_broker/features/notifications/pages/notifications_page.dart';
import 'package:flyday_broker/features/offers/pages/offer_editor_page.dart';
import 'package:flyday_broker/features/profile/pages/about_page.dart';
import 'package:flyday_broker/features/profile/pages/create_account_page.dart';
import 'package:flyday_broker/features/profile/pages/edit_profile_page.dart';
import 'package:flyday_broker/features/profile/pages/forgot_password_page.dart';
import 'package:flyday_broker/features/profile/pages/login_page.dart';
import 'package:flyday_broker/features/profile/pages/new_password_page.dart';
import 'package:flyday_broker/features/profile/pages/sign_up_page.dart';
import 'package:flyday_broker/features/profile/pages/sign_up_wrapper_page.dart';
import 'package:flyday_broker/features/profile/pages/verify_code_page.dart';

import '../features/ads/pages/ad_page.dart';
import '../features/aircrafts/pages/aircraft_seach_page.dart';
import '../features/offers/pages/offer_editor_wrapper_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: AuthenticationWrapperPage,
      path: '/authentication',
      name: 'AuthenticationRoute',
      children: [
        AutoRoute(page: LoginPage, initial: true, path: 'login'),
        AutoRoute(page: ForgotPasswordPage, path: 'forgot_password'),
        AutoRoute(page: NewPasswordPage, path: 'new_password'),
        AutoRoute(page: VerifyCodePage, path: 'verify_code'),
        AutoRoute(
          page: SignUpWrapperPage,
          path: 'sign_up',
          children: [
            AutoRoute(page: SignUpPage, path: '', initial: true),
            AutoRoute(page: CreateAccountPage, path: 'create_account'),
          ],
        ),
        RedirectRoute(path: '*', redirectTo: 'login'),
      ],
    ),
    AutoRoute(
      page: DashBoardWrapper,
      path: '/dashboard',
      name: 'DashboardRoute',
      children: [
        AutoRoute(page: AdsPage, path: '', initial: true),
        // AutoRoute(page: AdsPage, path: 'ads'),
        AutoRoute(page: AdPage, path: 'ad'),
        AutoRoute(page: ChatPage, path: 'chat'),
        AutoRoute(page: SupportChatPage, path: 'support_chat'),
        // AutoRoute(page: ChatPage, path: '', initial: true),
        AutoRoute(page: OfferPage, path: 'offer'),
        AutoRoute(page: EditProfilePage, path: 'profile'),
        AutoRoute(page: AboutPage, path: 'about'),
        AutoRoute(page: NotificationsPage, path: 'notifications'),
        AutoRoute(
          page: OfferEditorWrapperPage,
          path: 'offer',
          children: [
            AutoRoute(page: OfferEditorPage, path: '', initial: true),
            AutoRoute(page: AircraftSeachPage, path: 'aircraft_search'),
          ],
        ),
        AutoRoute(page: MyDocumentsPage, path: 'my_documents'),
      ],
    ),
  ],
)
class $AppRouter {}
