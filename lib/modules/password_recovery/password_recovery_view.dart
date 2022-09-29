import 'package:crypto_app/modules/password_recovery/passwordRecoveryDevice/passwordRecoveryMobile.dart';
import 'package:crypto_app/modules/password_recovery/passwordRecoveryDevice/passwordRecoveryTablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'password_recovery_logic.dart';

class PasswordRecoveryPage extends StatelessWidget {
  const PasswordRecoveryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<PasswordRecoveryLogic>();

    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return ScreenTypeLayout(
        mobile: OrientationLayoutBuilder(
          portrait: (context) =>
              PasswordRecoveryPageMobilePortrait(sizingInformation: sizingInformation),
          landscape: (context) =>
              PasswordRecoveryPageMobileLandscape(sizingInformation: sizingInformation),
        ),
        tablet: OrientationLayoutBuilder(
          portrait: (context) =>
              PasswordRecoveryPageTabletPortrait(sizingInformation: sizingInformation),
          landscape: (context) =>
              PasswordRecoveryPageTabletLandscape(sizingInformation: sizingInformation),
        ),
      );
    });
  }
}
