import 'package:crypto_app/modules/wallet/walletDevice/walletMobile.dart';
import 'package:crypto_app/modules/wallet/walletDevice/walletTablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'wallet_logic.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<WalletLogic>();

    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return ScreenTypeLayout(
        mobile: OrientationLayoutBuilder(
          portrait: (context) =>
              WalletPageMobilePortrait(sizingInformation: sizingInformation),
          landscape: (context) =>
              WalletPageMobileLandscape(sizingInformation: sizingInformation),
        ),
        tablet: OrientationLayoutBuilder(
          portrait: (context) =>
              WalletPageTabletPortrait(sizingInformation: sizingInformation),
          landscape: (context) =>
              WalletPageTabletLandscape(sizingInformation: sizingInformation),
        ),
      );
    });
  }
}
