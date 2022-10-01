import 'package:crypto_app/modules/history/history_logic.dart';
import 'package:crypto_app/routes/app-pages.dart';
import 'package:crypto_app/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../widgets/buttons.dart';
import '../../../widgets/views.dart';

class HistoryPageMobilePortrait extends GetView<HistoryLogic> {
  final SizingInformation? sizingInformation;
  const HistoryPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  void _showDatePicker({context}){
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
            onPressed: (){
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
              onPressed: (){
                _showDatePicker(context: context);
              }
          ),
          Expanded(
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
                        onPressed: (){
                          showDialog(
                              context: context,
                              builder: (context) =>
                                AlertDialog(
                                  title: Text("Transactions"),
                                  content: Text(''),
                                )
                          );
                        }
                    ),
                    Buttons.buttons(
                        width: 100.0,
                        text: 'Date Picker',
                        height: 30.0,
                        circularValue: 10.0,
                        value: 5.0,
                        BorderColor: ConstColors.TEXTWHITE,
                        colorValue: ConstColors.BACKGROUND,
                        onPressed: (){
                          showDialog(
                              context: context,
                              builder: (context) =>
                                  AlertDialog(
                                    title: Text("Transactions"),
                                    content: Text(''),
                                    actions: [
                                      TextButton(
                                        child: Text('Ok'),
                                        onPressed: (){
                                          print("Hello");
                                          Get.toNamed(AppPages.HISTORY);
                                        },
                                      ),
                                    ],
                                  )
                          );
                        }
                    ),
                    Buttons.buttons(
                        width: 100.0,
                        text: 'Date Picker',
                        height: 30.0,
                        circularValue: 10.0,
                        value: 5.0,
                        BorderColor: ConstColors.TEXTWHITE,
                        colorValue: ConstColors.BACKGROUND,
                        onPressed: (){
                          _showDatePicker(context: context);
                        }
                    ),
                    Buttons.buttons(
                        width: 100.0,
                        text: 'Date Picker',
                        height: 30.0,
                        circularValue: 10.0,
                        value: 5.0,
                        BorderColor: ConstColors.TEXTWHITE,
                        colorValue: ConstColors.BACKGROUND,
                        onPressed: (){
                          _showDatePicker(context: context);
                        }
                    ),
                  ],
                ),
              )
          )
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
