import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'introductionDevice/introductionMobile.dart';
import 'introductionDevice/introductionTablet.dart';
import 'introduction_logic.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<IntroductionLogic>();

    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return ScreenTypeLayout(
        mobile: OrientationLayoutBuilder(
          portrait: (context) =>
              IntroductionPageMobilePortrait(sizingInformation: sizingInformation),
          landscape: (context) =>
              IntroductionPageMobileLandscape(sizingInformation: sizingInformation),
        ),
        tablet: OrientationLayoutBuilder(
          portrait: (context) =>
              IntroductionPageTabletPortrait(sizingInformation: sizingInformation),
          landscape: (context) =>
              IntroductionPageTabletLandscape(sizingInformation: sizingInformation),
        ),
      );
    });
  }
}
