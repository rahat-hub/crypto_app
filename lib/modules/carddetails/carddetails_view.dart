import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'cardDetailsDevice/cardDetailsMobile.dart';
import 'cardDetailsDevice/cardDetailsTablet.dart';
import 'carddetails_logic.dart';

class CarddetailsPage extends StatelessWidget {
  const CarddetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<CarddetailsLogic>();

    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return ScreenTypeLayout(
        mobile: OrientationLayoutBuilder(
          portrait: (context) =>
              CardDetailsPageMobilePortrait(sizingInformation: sizingInformation),
          landscape: (context) =>
              CardDetailsPageMobileLandscape(sizingInformation: sizingInformation),
        ),
        tablet: OrientationLayoutBuilder(
          portrait: (context) =>
              CardDetailsPageTabletPortrait(sizingInformation: sizingInformation),
          landscape: (context) =>
              CardDetailsPageTabletLandscape(sizingInformation: sizingInformation),
        ),
      );
    });
  }
}
