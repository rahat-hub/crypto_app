import 'package:crypto_app/modules/history/history_logic.dart';
import 'package:crypto_app/routes/app-pages.dart';
import 'package:crypto_app/shared/constants/colors.dart';
import 'package:crypto_app/shared/constants/font_sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../widgets/buttons.dart';
import '../../../widgets/texts.dart';
import '../../../widgets/views.dart';

class HistoryPageMobilePortrait extends GetView<HistoryLogic> {
  final SizingInformation? sizingInformation;

  const HistoryPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  void _showDatePicker({context}) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2024),
    );
  }

  @override
  Widget build(BuildContext context) {
    Get.find<HistoryLogic>();
    return Scaffold(
      backgroundColor: ConstColors.BACKGROUND,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Views.appBarView(
            text: 'History',
            onPressed: () {
              Get.toNamed(AppPages.PROFILE);
            },
          ),
          Buttons.buttons(
              width: 50.0,
              text: 'Date Picker',
              height: 30.0,
              circularValue: 10.0,
              value: 5.0,
              BorderColor: ConstColors.TEXTWHITE,
              colorValue: ConstColors.BACKGROUND,
              onPressed: () {
                _showDatePicker(context: context);
              }),
          SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Buttons.buttons(
                      width: 50.0,
                      text: 'Transactions +\$1000.00',
                      height: 30.0,
                      circularValue: 10.0,
                      value: 5.0,
                      BorderColor: ConstColors.TEXTWHITE,
                      colorValue: ConstColors.BACKGROUND,
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => const AlertDialog(
                                  title: Text("Transactions"),
                                  content: Text(''),
                                ));
                      }),
                  Buttons.buttons(
                      width: 100.0,
                      text: 'Date Picker',
                      height: 30.0,
                      circularValue: 10.0,
                      value: 5.0,
                      BorderColor: ConstColors.TEXTWHITE,
                      colorValue: ConstColors.BACKGROUND,
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: Text("Transactions"),
                                  content: Text(''),
                                  actions: [
                                    TextButton(
                                      child: Text('Ok'),
                                      onPressed: () {
                                        print("Hello");
                                        Get.toNamed(AppPages.HISTORY);
                                      },
                                    ),
                                  ],
                                ));
                      }),
                  Buttons.buttons(
                      width: 100.0,
                      text: 'Date Picker',
                      height: 30.0,
                      circularValue: 10.0,
                      value: 5.0,
                      BorderColor: ConstColors.TEXTWHITE,
                      colorValue: ConstColors.BACKGROUND,
                      onPressed: () {
                        _showDatePicker(context: context);
                      }),
                  Buttons.buttons(
                      width: 100.0,
                      text: 'Date Picker',
                      height: 30.0,
                      circularValue: 10.0,
                      value: 5.0,
                      BorderColor: ConstColors.TEXTWHITE,
                      colorValue: ConstColors.BACKGROUND,
                      onPressed: () {
                        _showDatePicker(context: context);
                      }),
                ],
              ),
            ),
          ),
          Text(
            'Today',
            style: Texts.textStyles(
              colors: ConstColors.TEXTWHITE,
              fontWeight: FontWeight.w400,
              textSize: FontSizes.BIG,
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
      ),
    );
  }
}

class HistoryPageMobileLandscape extends GetView<HistoryLogic> {
  final SizingInformation? sizingInformation;

  const HistoryPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<HistoryLogic>();
    return Container();
  }
}

class HistoryView {
  static cardViewEvent(
      {leftTitleText,
      leftSubText,
      rightTitleText,
      rightSubText,
      logoBackColor}) {
    return SizedBox(
      width: double.infinity,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: logoBackColor,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(leftTitleText,
                  style: Texts.textStyles(
                    textSize: FontSizes.BIG,
                    fontWeight: FontWeight.w500,
                    colors: ConstColors.TEXTWHITE,
                  )),
              Text(leftSubText,
                  style: Texts.textStyles(
                    textSize: FontSizes.MEDIUM,
                    fontWeight: FontWeight.w300,
                    colors: ConstColors.GREY,
                  )),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(rightTitleText,
                  style: Texts.textStyles(
                    textSize: FontSizes.BIG,
                    fontWeight: FontWeight.w500,
                    colors: ConstColors.TEXTWHITE,
                  )),
              Text(rightSubText,
                  style: Texts.textStyles(
                    textSize: FontSizes.MEDIUM,
                    fontWeight: FontWeight.w300,
                    colors: ConstColors.GREY,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
