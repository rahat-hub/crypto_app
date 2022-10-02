import 'package:crypto_app/modules/carddetails/carddetails_binding.dart';
import 'package:crypto_app/modules/carddetails/carddetails_view.dart';
import 'package:crypto_app/modules/dashboard/dashboard_binding.dart';
import 'package:crypto_app/modules/dashboard/dashboard_view.dart';
import 'package:crypto_app/modules/history/history_binding.dart';
import 'package:crypto_app/modules/history/history_view.dart';
import 'package:crypto_app/modules/introduction/introduction_binding.dart';
import 'package:crypto_app/modules/introduction/introduction_view.dart';
import 'package:crypto_app/modules/password_recovery/password_recovery_binding.dart';
import 'package:crypto_app/modules/password_recovery/password_recovery_view.dart';
import 'package:crypto_app/modules/profile/profile_binding.dart';
import 'package:crypto_app/modules/profile/profile_view.dart';
import 'package:crypto_app/modules/resetpassword/resetpassword_binding.dart';
import 'package:crypto_app/modules/resetpassword/resetpassword_view.dart';
import 'package:crypto_app/modules/sign_in/sign_in_binding.dart';
import 'package:crypto_app/modules/splash/splash_binding.dart';
import 'package:crypto_app/modules/trading/trading_binding.dart';
import 'package:crypto_app/modules/trading/trading_view.dart';
import 'package:crypto_app/modules/wallet/wallet_binding.dart';
import 'package:crypto_app/modules/wallet/wallet_view.dart';
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
        page: () => const Password_recovey_confirmPage(),
        bindings: [
          Password_recovey_confirmBinding(),
        ]
    ),
    GetPage(
        name: AppPages.DASHBOARD,
      page: () => const DashboardPage(),
      bindings: [
        DashboardBinding(),
      ]
    ),
    GetPage(
        name: AppPages.PROFILE,
        page: () => const ProfilePage(),
        bindings: [
          ProfileBinding(),
        ]
    ),
    GetPage(
        name: AppPages.CARDDETAILS,
        page: () => const CarddetailsPage(),
        bindings: [
          CarddetailsBinding(),
        ]
    ),
    GetPage(
      name: AppPages.WALLET,
      page: () => const WalletPage(),
      bindings: [
        WalletBinding(),
      ],
    ),
    GetPage(
      name: AppPages.TRADING,
      page: () => const TradingPage(),
      bindings: [
        TradingBinding(),
      ],
    ),
    GetPage(
      name: AppPages.HISTORY,
      page: () => const HistoryPage(),
      bindings: [
        HistoryBinding(),
      ],
    ),
    GetPage(
      name: AppPages.RESETPASSWORD,
      page: () => const ResetPasswordPage(),
      bindings: [
        ResetpasswordBinding(),
      ],
    ),
  ];
}