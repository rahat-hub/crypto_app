import 'package:crypto_app/modules/dashboard/dashboard_binding.dart';
import 'package:crypto_app/modules/dashboard/dashboard_view.dart';
import 'package:crypto_app/modules/introduction/introduction_binding.dart';
import 'package:crypto_app/modules/introduction/introduction_view.dart';
import 'package:crypto_app/modules/password_recovery/password_recovery_binding.dart';
import 'package:crypto_app/modules/password_recovery/password_recovery_view.dart';
import 'package:crypto_app/modules/sign_in/sign_in_binding.dart';
import 'package:crypto_app/modules/splash/splash_binding.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../modules/password_recovery/passwordRecoveryConfirm/password_recovey_confirm/password_recovey_confirm_binding.dart';
import '../modules/password_recovery/passwordRecoveryConfirm/password_recovey_confirm/password_recovey_confirm_view.dart';
import '../modules/sign_in/sign_in_view.dart';
import '../modules/sign_up/sign_up_binding.dart';
import '../modules/sign_up/sign_up_view.dart';
import '../modules/splash/splash_view.dart';
import 'app-pages.dart';

class AppRoutes{
  static const INITIAL = AppPages.SPLASH;
  static final routes = [
    GetPage(
        name: AppPages.SPLASH,
        page: () => const SplashPage(),
        bindings: [
          SplashBinding(),
        ]
    ),
    GetPage(
        name: AppPages.INTRODUCTION,
        page: () => const IntroductionPage(),
        bindings: [
          IntroductionBinding(),
        ]
    ),
    GetPage(
        name: AppPages.SIGNIN,
        page: () => const SignInPage(),
      bindings: [
          SignInBinding(),
      ]
    ),
    GetPage(
        name: AppPages.SIGNUP,
        page: () => const SignUpPage(),
        bindings: [
          SignUpBinding(),
        ]
    ),
    GetPage(
        name: AppPages.PASSWORDRECOVERY,
        page: () => const PasswordRecoveryPage(),
        bindings: [
          PasswordRecoveryBinding(),
        ]
    ),
    GetPage(
        name: AppPages.PASSWORDRECOVERYCONFIRM,
        page: () => Password_recovey_confirmPage(),
        bindings: [
          Password_recovey_confirmBinding(),
        ]
    ),
    GetPage(
        name: AppPages.DASHBOARD,
      page: () => DashboardPage(),
      bindings: [
        DashboardBinding(),
      ]
    ),
  ];
}