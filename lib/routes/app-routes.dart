import 'package:crypto_app/modules/dashboard/dashboard_binding.dart';
import 'package:crypto_app/modules/dashboard/dashboard_logic.dart';
import 'package:crypto_app/modules/introduction/introduction_binding.dart';
import 'package:crypto_app/modules/introduction/introduction_view.dart';
import 'package:crypto_app/modules/sign_in/sign_in_binding.dart';
import 'package:crypto_app/modules/splash/splash_binding.dart';
import 'package:get/get.dart';

import '../modules/dashboard/dashboard_view.dart';
import '../modules/sign_in/sign_in_view.dart';
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
        name: AppPages.DASHBOARD,
        page: () => const DashboardPage(),
        bindings: [
          DashboardBinding(),
        ]
    ),
  ];
}