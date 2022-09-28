import 'package:crypto_app/modules/introduction/introduction_logic.dart';
import 'package:crypto_app/routes/app-pages.dart';
import 'package:crypto_app/widgets/buttons.dart';
import 'package:crypto_app/widgets/views.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../shared/assets/images.dart';
import '../../../shared/constants/colors.dart';

class IntroductionPageMobilePortrait extends GetView<IntroductionLogic> {
  final SizingInformation? sizingInformation;

  const IntroductionPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<IntroductionLogic>();
    return IntroductionScreen(
      key: controller.introKey,
      globalBackgroundColor: ConstColors.BACKGROUND,
      globalFooter: SizedBox(
          width: double.infinity,
          height: 100,
          child: Buttons.buttons(
              text: 'Start Now',
              value: 30.0,
              circularValue: 5.0,
              onPressed: () {
                Get.offNamed(AppPages.SIGNIN);
              })),
      pages: [
        Views.pageViewModle(text: 'We make crypto clear \n simple',imageValue: Images.introductionLogo_1),
        Views.pageViewModle(text: 'Take your first step int safe,\n secure crypto investing',imageValue: Images.introductionLogo_2),
        Views.pageViewModle(text: '24/7 access to full service\n customer support',imageValue: Images.introductionLogo_3),
      ],
      //onDone: () => Get.toNamed(AppPages.SIGNIN),
      //onSkip: () => _onIntroEnd(context),
      //You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      showDoneButton: false,
      showNextButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      //done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.easeOutCubic,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: ConstColors.WHITE,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
      ),
    );
  }
}

class IntroductionPageMobileLandscape extends GetView<IntroductionLogic> {
  final SizingInformation? sizingInformation;

  const IntroductionPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<IntroductionLogic>();
    return Container();
  }
}
