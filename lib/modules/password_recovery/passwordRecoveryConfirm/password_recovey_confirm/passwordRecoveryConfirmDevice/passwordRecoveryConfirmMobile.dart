import 'package:crypto_app/modules/password_recovery/passwordRecoveryConfirm/password_recovey_confirm/password_recovey_confirm_logic.dart';
import 'package:crypto_app/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../shared/constants/font_sizes.dart';
import '../../../../../widgets/texts.dart';

class PasswordRecoveryConfirmPageMobilePortrait extends GetView<Password_recovey_confirmLogic> {

  final SizingInformation? sizingInformation;

  const PasswordRecoveryConfirmPageMobilePortrait({Key? key,this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<Password_recovey_confirmLogic>();
    return Scaffold(
      backgroundColor: ConstColors.BACKGROUND,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Texts.texts(texts: 'Verify your mail',align: TextAlign.center,textSize: FontSizes.LARGE,fontWeight: FontWeight.w900,colors: ConstColors.TEXTWHITE),
            SizedBox(height: 20,),
            Texts.texts(texts: 'Go to mail and click the button to verify your account',align: TextAlign.center,textSize: FontSizes.BIG,fontWeight: FontWeight.w600,colors: ConstColors.TEXTGREY),
          ],
        ),
      ),
    );
  }
}

class PasswordRecoveryConfirmPageMobileLandscape extends GetView<Password_recovey_confirmLogic> {
  final SizingInformation? sizingInformation;
  const PasswordRecoveryConfirmPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<Password_recovey_confirmLogic>();
    return Container();
  }
}

