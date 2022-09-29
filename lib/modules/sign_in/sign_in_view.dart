import 'package:crypto_app/modules/sign_in/signInDevice/signInMobile.dart';
import 'package:crypto_app/modules/sign_in/signInDevice/signInTablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'sign_in_logic.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SignInLogic>();

    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return ScreenTypeLayout(
        mobile: OrientationLayoutBuilder(
          portrait: (context) =>
              SignInPageMobilePortrait(sizingInformation: sizingInformation),
          landscape: (context) =>
              SignInPageMobileLandscape(sizingInformation: sizingInformation),
        ),
        tablet: OrientationLayoutBuilder(
          portrait: (context) =>
              SignInPageTabletPortrait(sizingInformation: sizingInformation),
          landscape: (context) =>
              SignInPageTabletLandscape(sizingInformation: sizingInformation),
        ),
      );
    });
  }
}
