import 'package:crypto_app/modules/wallet/walletLayers/bottomLayer.dart';
import 'package:crypto_app/modules/wallet/walletLayers/midLayer.dart';
import 'package:crypto_app/modules/wallet/walletLayers/toplayer.dart';
import 'package:crypto_app/modules/wallet/wallet_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../shared/constants/colors.dart';
import '../../../shared/constants/font_sizes.dart';
import '../../../widgets/texts.dart';
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
          const SizedBox(height: 10,),
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
                  margin: const EdgeInsets.all(20),
                  icon: const Icon(
                    Icons.thumb_up,
                    color: ConstColors.BLUE,
                  ),
                  shouldIconPulse: false,
                );
              }
          ),
          WalletPageTopLayer.walletPageTaopLayer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('My Portfolio',style: Texts.textStyles(
                  textSize: FontSizes.BIG,
                  fontWeight: FontWeight.w400,
                  colors: ConstColors.TEXTWHITE,
                ),
                ),
                Text('See All',style: Texts.textStyles(
                  textSize: FontSizes.MEDIUM,
                  fontWeight: FontWeight.w300,
                  colors: ConstColors.TEXTWHITE,
                ),
                ),
              ],
            ),
          ),
          WalletPageMidLayer.walletPageMidLayer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('My Portfolio',style: Texts.textStyles(
                  textSize: FontSizes.BIG,
                  fontWeight: FontWeight.w400,
                  colors: ConstColors.TEXTWHITE,
                ),
                ),
                Text('See All',style: Texts.textStyles(
                  textSize: FontSizes.MEDIUM,
                  fontWeight: FontWeight.w300,
                  colors: ConstColors.TEXTWHITE,
                ),
                ),
              ],
            ),
          ),
          WalletBottomLayer.walletPageBottomLayer(context: context),
        ],
      ),
      bottomNavigationBar: WalletBottomLayer.walletPageNavigationBottomLayer(),
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
