import 'package:crypto_app/modules/trading/trading_logic.dart';
import 'package:crypto_app/shared/constants/font_sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../shared/assets/images.dart';
import '../../../shared/constants/colors.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/texts.dart';
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
          const SizedBox(
            height: 20,
          ),
          Views.appBarViewHome2(
              TitleText: 'Trading',
              SubTitleText: '',
              icon: Icons.notifications,
              onPressed: () {
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
              }),
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  '\$ 50,400.80',
                  style: Texts.textStyles(
                    colors: ConstColors.TEXTWHITE,
                    textSize: FontSizes.EXTRALARGE,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$ 50,400.80',
                      style: Texts.textStyles(
                        colors: ConstColors.GREY,
                        textSize: FontSizes.BIG,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Text(
                      '+9%',
                      style: Texts.textStyles(
                        colors: ConstColors.GREY,
                        textSize: FontSizes.BIG,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ConstColors.BTC_BACK_COLOR,
                ),
                child: Image.asset(
                  Images.btcLogo,
                ),
              ),
              Text(
                'Bitcoin',
                style: Texts.textStyles(
                  colors: ConstColors.TEXTWHITE,
                  textSize: FontSizes.MEDIUM,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                width: 150,
              ),
              Text(
                'USDT',
                style: Texts.textStyles(
                  colors: ConstColors.TEXTWHITE,
                  textSize: FontSizes.REGULAR,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                '7.860',
                style: Texts.textStyles(
                  colors: ConstColors.TEXTWHITE,
                  textSize: FontSizes.MEDIUM,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ],
          ),
          Image.asset(
            Images.tradingChart_1,
            width: double.infinity,
            height: 250,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Buttons.buttons(
                  height: 50,
                  width: 50,
                  circularValue: 10,
                  colorValue: ConstColors.GREY,
                  text: '1H',
                  BorderColor: ConstColors.BACKGROUND,
                  onPressed: () {}),
              Buttons.buttons(
                  height: 50,
                  width: 50,
                  circularValue: 10,
                  colorValue: ConstColors.GREY,
                  text: '1H',
                  BorderColor: ConstColors.BACKGROUND,
                  onPressed: () {}),
              Buttons.buttons(
                  height: 50.0,
                  width: 50.0,
                  circularValue: 10,
                  colorValue: ConstColors.GREY,
                  text: '1D',
                  BorderColor: ConstColors.BACKGROUND,
                  onPressed: () {}),
              Buttons.buttons(
                  height: 50.0,
                  width: 50.0,
                  circularValue: 10,
                  colorValue: ConstColors.GREY,
                  text: '1W',
                  BorderColor: ConstColors.BACKGROUND,
                  onPressed: () {}),
              Buttons.buttons(
                  height: 50.0,
                  width: 50.0,
                  circularValue: 10,
                  colorValue: ConstColors.GREY,
                  text: '1M',
                  BorderColor: ConstColors.BACKGROUND,
                  onPressed: () {}),
              Buttons.buttons(
                  height: 50.0,
                  width: 50.0,
                  circularValue: 10,
                  colorValue: ConstColors.GREY,
                  text: '1Y',
                  BorderColor: ConstColors.BACKGROUND,
                  onPressed: () {}),
              Buttons.buttons(
                  height: 50.0,
                  width: 50.0,
                  circularValue: 10,
                  colorValue: ConstColors.GREY,
                  text: 'All',
                  BorderColor: ConstColors.BACKGROUND,
                  onPressed: () {}),
            ],
          ),
          Expanded(
            child: Row(
              children: [
                 Buttons.buttons(
                   width: 100,
                   height: 50,
                   text: 'Buy',
                   colorValue: ConstColors.BLUE,
                   circularValue: 10,
                   BorderColor: ConstColors.BLUE,
                   onPressed: (){

                   }
                 ),
                Buttons.buttons(
                    width: 100,
                    height: 50,
                    text: 'Buy',
                    colorValue: ConstColors.BACKGROUND,
                    circularValue: 10,
                    BorderColor: ConstColors.BLUE,
                    onPressed: (){

                    },
                ),
              ],
            ),
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
