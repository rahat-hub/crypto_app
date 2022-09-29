import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'dashboardDevice/dashboardMoble.dart';
import 'dashboardDevice/dashboardTablet.dart';
import 'dashboard_logic.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<DashboardLogic>();

    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return ScreenTypeLayout(
        mobile: OrientationLayoutBuilder(
          portrait: (context) =>
              HomePageMobilePortrait(sizingInformation: sizingInformation),
          landscape: (context) =>
              HomePageMobileLandscape(sizingInformation: sizingInformation),
        ),
        tablet: OrientationLayoutBuilder(
          portrait: (context) =>
              HomePageTabletPortrait(sizingInformation: sizingInformation),
          landscape: (context) =>
              HomePageTabletLandscape(sizingInformation: sizingInformation),
        ),
      );
    });
  }
}
