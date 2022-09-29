import 'package:crypto_app/modules/carddetails/carddetails_logic.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';

class CardDetailsPageTabletPortrait extends GetView<CarddetailsLogic> {
  final SizingInformation? sizingInformation;
  const CardDetailsPageTabletPortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<CarddetailsLogic>();
    return Container();
  }
}

class CardDetailsPageTabletLandscape extends GetView<CarddetailsLogic> {
  final SizingInformation? sizingInformation;
  const CardDetailsPageTabletLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<CarddetailsLogic>();
    return Container();
  }
}