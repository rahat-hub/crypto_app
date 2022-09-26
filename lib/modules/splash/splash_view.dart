import 'package:crypto_app/modules/splash/splashDevice/splashMobile.dart';
import 'package:crypto_app/modules/splash/splashDevice/splashTablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_logic.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Get.find<SplashLogic>();

    return ResponsiveBuilder(
      builder: (context, sizingInformation){
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) => SplashPageMobilePortrait(sizingInformation: sizingInformation),
            landscape: (context) => SplashPageMobileLandscape(sizingInformation: sizingInformation),
          ),
          tablet: OrientationLayoutBuilder(
            portrait: (context) => SplashPageTabletPortrait(sizingInformation: sizingInformation),
            landscape: (context) => SplashPageTabletLandscape(sizingInformation: sizingInformation),
          ),
        );
      }
    );
  }
}
