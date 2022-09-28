import 'package:crypto_app/modules/splash/splash_logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../shared/assets/images.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/constants/font_sizes.dart';
import '../../../widgets/texts.dart';
class SplashPageMobilePortrait extends GetView<SplashLogic> {
  final SizingInformation? sizingInformation;
  const SplashPageMobilePortrait({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SplashLogic>();
    return Scaffold(
      backgroundColor: ConstColors.BACKGROUND,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Images.splashLogo),
            Texts.texts(texts: "Cryptocurrency",align: TextAlign.center,textSize: FontSizes.LARGE,fontWeight: FontWeight.w500),
          ],
        ),
      ),
    );
  }
}
class SplashPageMobileLandscape extends GetView<SplashLogic> {
  final SizingInformation? sizingInformation;
  const SplashPageMobileLandscape({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SplashLogic>();
    return Container();
  }
}
