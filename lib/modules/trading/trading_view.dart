import 'package:crypto_app/modules/trading/tradingDevice/tradingMobile.dart';
import 'package:crypto_app/modules/trading/tradingDevice/tradingTablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'trading_logic.dart';

class TradingPage extends StatelessWidget {
  const TradingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<TradingLogic>();

    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return ScreenTypeLayout(
        mobile: OrientationLayoutBuilder(
          portrait: (context) =>
              TradingPageMobilePortrait(sizingInformation: sizingInformation),
          landscape: (context) =>
              TradingPageMobileLandscape(sizingInformation: sizingInformation),
        ),
        tablet: OrientationLayoutBuilder(
          portrait: (context) =>
              TradingPageTabletPortrait(sizingInformation: sizingInformation),
          landscape: (context) =>
              TradingPageTabletLandscape(sizingInformation: sizingInformation),
        ),
      );
    });
  }
}
