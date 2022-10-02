import 'package:crypto_app/modules/resetpassword/resetpassword_logic.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResetPasswordPageTabletPortrait extends GetView<ResetpasswordLogic> {
  final SizingInformation? sizingInformation;
  const ResetPasswordPageTabletPortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ResetpasswordLogic>();
    return Container();
  }
}

class ResetPasswordPageTabletLandscape extends GetView<ResetpasswordLogic> {
  final SizingInformation? sizingInformation;
  const ResetPasswordPageTabletLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ResetpasswordLogic>();
    return Container();
  }
}