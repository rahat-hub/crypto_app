import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../dashboard_logic.dart';

class HomePageTabletPortrait extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;
  const HomePageTabletPortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<DashboardLogic>();
    return Container();
  }
}

class HomePageTabletLandscape extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;
  const HomePageTabletLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<DashboardLogic>();
    return Container();
  }
}