import 'package:crypto_app/modules/password_recovery/passwordRecoveryConfirm/password_recovey_confirm/passwordRecoveryConfirmDevice/passwordRecoveryConfirmMobile.dart';
import 'package:crypto_app/modules/password_recovery/passwordRecoveryConfirm/password_recovey_confirm/passwordRecoveryConfirmDevice/passwordRecoveryConfirmTablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'password_recovey_confirm_logic.dart';

class Password_recovey_confirmPage extends StatelessWidget {
  const Password_recovey_confirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<Password_recovey_confirmLogic>();

    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return ScreenTypeLayout(
        mobile: OrientationLayoutBuilder(
          portrait: (context) =>
              PasswordRecoveryConfirmPageMobilePortrait(sizingInformation: sizingInformation),
          landscape: (context) =>
              PasswordRecoveryConfirmPageMobileLandscape(sizingInformation: sizingInformation),
        ),
        tablet: OrientationLayoutBuilder(
          portrait: (context) =>
              PasswordRecoveryConfirmPageTabletPortrait(sizingInformation: sizingInformation),
          landscape: (context) =>
              PasswordRecoveryConfirmPageTabletLandscape(sizingInformation: sizingInformation),
        ),
      );
    });
  }
}
