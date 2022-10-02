import 'package:crypto_app/modules/resetpassword/resetPasswordDevice/resetPasswordMobile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'resetPasswordDevice/resetPasswordTablet.dart';
import 'resetpassword_logic.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ResetpasswordLogic>();

    return ResponsiveBuilder(
      builder: (context, sizingInformation){
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) => ResetPasswordPageMobilePortrait(sizingInformation: sizingInformation,),
            landscape: (context) => ResetPasswordPageMobileLandscape(sizingInformation: sizingInformation,),
          ),
          tablet: OrientationLayoutBuilder(
            portrait: (context) => ResetPasswordPageTabletPortrait(sizingInformation: sizingInformation),
            landscape: (context) => ResetPasswordPageTabletLandscape(sizingInformation: sizingInformation,),
          ),
        );
      },
    );
  }
}
