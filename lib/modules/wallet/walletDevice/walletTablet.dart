import 'package:crypto_app/modules/wallet/wallet_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WalletPageTabletPortrait extends GetView<WalletLogic> {
  final SizingInformation? sizingInformation;
  const WalletPageTabletPortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<WalletLogic>();
    return Container();
  }
}
class WalletPageTabletLandscape extends GetView<WalletLogic> {
  final SizingInformation? sizingInformation;
  const WalletPageTabletLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<WalletLogic>();
    return Container();
  }
}