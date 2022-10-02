import 'package:crypto_app/modules/carddetails/cardDetailsLayer/cardDetailesTopLayer.dart';
import 'package:crypto_app/modules/carddetails/carddetails_logic.dart';
import 'package:crypto_app/shared/constants/colors.dart';
import 'package:crypto_app/widgets/views.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';

import '../../../routes/app-pages.dart';
import '../../../shared/constants/font_sizes.dart';
import '../../../widgets/texts.dart';
import '../../history/historyDevice/historyMobile.dart';

class CardDetailsPageMobilePortrait extends GetView<CarddetailsLogic> {
  final SizingInformation? sizingInformation;
  const CardDetailsPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<CarddetailsLogic>();
    return Scaffold(
      backgroundColor: ConstColors.BACKGROUND,
      body: Column(
        children: [
          Views.appBarView(text:'Card Detailse',onPressed: (){
            Get.toNamed(AppPages.DASHBOARD);
          }),
          CardDetailsePageTopLayer.cardDetailsePageTopLayer(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Views.cardDetailsSmallView(currency: "USD", value: "78,90",icon: Icons.arrow_upward),
                Views.cardDetailsSmallView(currency: "EUR", value: "78,90",icon: Icons.arrow_downward),
                Views.cardDetailsSmallView(currency: "GBP", value: "78,90",icon: Icons.arrow_upward),
                Views.cardDetailsSmallView(currency: "USD", value: "78,90",icon: Icons.arrow_upward),
                Views.cardDetailsSmallView(currency: "EUR", value: "78,90",icon: Icons.arrow_downward),
                Views.cardDetailsSmallView(currency: "GBP", value: "78,90",icon: Icons.arrow_upward),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Texts.texts(
                  texts: "Cash Back",
                ),
                Texts.texts(texts: "See All", textSize: FontSizes.SMALL),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HistoryView.cardViewEvent(
                    leftTitleText: 'Shopping',
                    leftSubText: '2.36 pm',
                    rightTitleText: '\$90',
                    rightSubText: '',
                    logoBackColor: ConstColors.GREY,
                  ),
                  HistoryView.cardViewEvent(
                    leftTitleText: 'Shopping',
                    leftSubText: '2.36 pm',
                    rightTitleText: '\$90',
                    rightSubText: '',
                    logoBackColor: ConstColors.GREY,
                  ),
                  HistoryView.cardViewEvent(
                    leftTitleText: 'Shopping',
                    leftSubText: '2.36 pm',
                    rightTitleText: '\$90',
                    rightSubText: '',
                    logoBackColor: ConstColors.GREY,
                  ),
                  HistoryView.cardViewEvent(
                    leftTitleText: 'Shopping',
                    leftSubText: '2.36 pm',
                    rightTitleText: '\$90',
                    rightSubText: '',
                    logoBackColor: ConstColors.GREY,
                  ),
                  HistoryView.cardViewEvent(
                    leftTitleText: 'Shopping',
                    leftSubText: '2.36 pm',
                    rightTitleText: '\$90',
                    rightSubText: '',
                    logoBackColor: ConstColors.GREY,
                  ),
                  HistoryView.cardViewEvent(
                    leftTitleText: 'Shopping',
                    leftSubText: '2.36 pm',
                    rightTitleText: '\$90',
                    rightSubText: '',
                    logoBackColor: ConstColors.GREY,
                  ),
                  HistoryView.cardViewEvent(
                    leftTitleText: 'Shopping',
                    leftSubText: '2.36 pm',
                    rightTitleText: '\$90',
                    rightSubText: '',
                    logoBackColor: ConstColors.GREY,
                  ),
                  HistoryView.cardViewEvent(
                    leftTitleText: 'Shopping',
                    leftSubText: '2.36 pm',
                    rightTitleText: '\$90',
                    rightSubText: '',
                    logoBackColor: ConstColors.GREY,
                  ),
                  HistoryView.cardViewEvent(
                    leftTitleText: 'Shopping',
                    leftSubText: '2.36 pm',
                    rightTitleText: '\$90',
                    rightSubText: '',
                    logoBackColor: ConstColors.GREY,
                  ),
                  HistoryView.cardViewEvent(
                    leftTitleText: 'Shopping',
                    leftSubText: '2.36 pm',
                    rightTitleText: '\$90',
                    rightSubText: '',
                    logoBackColor: ConstColors.GREY,
                  ),
                  HistoryView.cardViewEvent(
                    leftTitleText: 'Shopping',
                    leftSubText: '2.36 pm',
                    rightTitleText: '\$90',
                    rightSubText: '',
                    logoBackColor: ConstColors.GREY,
                  ),
                  HistoryView.cardViewEvent(
                    leftTitleText: 'Shopping',
                    leftSubText: '2.36 pm',
                    rightTitleText: '\$90',
                    rightSubText: '',
                    logoBackColor: ConstColors.GREY,
                  ),
                  HistoryView.cardViewEvent(
                    leftTitleText: 'Shopping',
                    leftSubText: '2.36 pm',
                    rightTitleText: '\$90',
                    rightSubText: '',
                    logoBackColor: ConstColors.GREY,
                  ),
                  HistoryView.cardViewEvent(
                    leftTitleText: 'Shopping',
                    leftSubText: '2.36 pm',
                    rightTitleText: '\$90',
                    rightSubText: '',
                    logoBackColor: ConstColors.GREY,
                  ),
                  HistoryView.cardViewEvent(
                    leftTitleText: 'Shopping',
                    leftSubText: '2.36 pm',
                    rightTitleText: '\$90',
                    rightSubText: '',
                    logoBackColor: ConstColors.GREY,
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}

class CardDetailsPageMobileLandscape extends GetView<CarddetailsLogic> {
  final SizingInformation? sizingInformation;
  const CardDetailsPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<CarddetailsLogic>();
    return Container();
  }
}
