import 'package:crypto_app/modules/history/historyDevice/historyTablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'historyDevice/historyMobile.dart';
import 'history_logic.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<HistoryLogic>();

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) => HistoryPageMobilePortrait(sizingInformation: sizingInformation,),
            landscape:(context) => HistoryPageMobileLandscape(sizingInformation: sizingInformation,) ,
          ),
          tablet: OrientationLayoutBuilder(
            portrait: (context) => HistoryPageTabletPortrait(sizingInformation: sizingInformation,),
            landscape: (context) => HistoryPageTabletLandscape(sizingInformation: sizingInformation,),
          ),
        );
      },
    );
  }
}
