import 'package:crypto_app/modules/trading/trading_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../shared/constants/colors.dart';
import '../../../widgets/views.dart';
import '../tradingLayers/bottomLayer.dart';

class TradingPageMobilePortrait extends GetView<TradingLogic> {
  final SizingInformation? sizingInformation;
  const TradingPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<TradingLogic>();
    return Scaffold(
      backgroundColor: ConstColors.BACKGROUND,
      body: Column(
        children: [
          SizedBox(height: 20,),
          Views.appBarViewHome2(
              TitleText: 'Trading',
              SubTitleText: '',
              icon: Icons.notifications,
              onPressed: (){
                Get.snackbar(
                  'Notification',
                  'No notifications',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: ConstColors.TRANSPARENT,
                  colorText: ConstColors.GREY,
                  margin: EdgeInsets.all(20),
                  icon: const Icon(
                    Icons.thumb_up,
                    color: ConstColors.BLUE,
                  ),
                  shouldIconPulse: false,
                );
              }
          ),
        ],
      ),
      bottomNavigationBar: TradingBottomLayer.tradingPageBottomLayer(),
    );
  }
}
class TradingPageMobileLandscape extends GetView<TradingLogic> {
  final SizingInformation? sizingInformation;
  const TradingPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<TradingLogic>();
    return Container();
  }
}
