import 'package:crypto_app/modules/trading/trading_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TradingPageTabletPortrait extends GetView<TradingLogic> {
  final SizingInformation? sizingInformation;
  const TradingPageTabletPortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<TradingLogic>();
    return Container();
  }
}
class TradingPageTabletLandscape extends GetView<TradingLogic> {
  final SizingInformation? sizingInformation;
  const TradingPageTabletLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<TradingLogic>();
    return Container();
  }
}