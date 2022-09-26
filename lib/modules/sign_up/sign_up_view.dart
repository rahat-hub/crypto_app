import 'package:crypto_app/modules/sign_up/signUpDevice/signUpMobile.dart';
import 'package:crypto_app/modules/sign_up/signUpDevice/signUpTablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'sign_up_logic.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<SignUpLogic>();

    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return ScreenTypeLayout(
        mobile: OrientationLayoutBuilder(
          portrait: (context) =>
              SignUpPageMobilePortrait(sizingInformation: sizingInformation),
          landscape: (context) =>
              SignUpPageMobileLandscape(sizingInformation: sizingInformation),
        ),
        tablet: OrientationLayoutBuilder(
          portrait: (context) =>
              SignUpPageTabletPortrait(sizingInformation: sizingInformation),
          landscape: (context) =>
              SignUpPageTabletLandscape(sizingInformation: sizingInformation),
        ),
      );
    });
  }
}
