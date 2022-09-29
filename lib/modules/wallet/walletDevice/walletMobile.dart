import 'package:crypto_app/modules/wallet/walletLayers/bottomLayer.dart';
import 'package:crypto_app/modules/wallet/wallet_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../shared/constants/colors.dart';
import '../../../widgets/views.dart';

class WalletPageMobilePortrait extends GetView<WalletLogic> {
  final SizingInformation? sizingInformation;
  const WalletPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<WalletLogic>();
    return Scaffold(
      backgroundColor: ConstColors.BACKGROUND,
      body: Column(
        children: [
          SizedBox(height: 20,),
          Views.appBarViewHome2(
              TitleText: 'Wallet',
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
      bottomNavigationBar: WalletBottomLayer.walletPageBottomLayer(),
    );
  }
}
class WalletPageMobileLandscape extends GetView<WalletLogic> {
  final SizingInformation? sizingInformation;
  const WalletPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<WalletLogic>();
    return Container();
  }
}
