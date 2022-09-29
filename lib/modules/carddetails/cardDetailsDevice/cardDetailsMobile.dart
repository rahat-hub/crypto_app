import 'package:crypto_app/modules/carddetails/carddetails_logic.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';

class CardDetailsPageMobilePortrait extends GetView<CarddetailsLogic> {
  final SizingInformation? sizingInformation;
  const CardDetailsPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<CarddetailsLogic>();
    return Container();
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
