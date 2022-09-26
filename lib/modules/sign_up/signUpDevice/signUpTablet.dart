import 'package:crypto_app/modules/sign_up/sign_up_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SignUpPageTabletPortrait extends GetView<SignUpLogic> {
  final SizingInformation? sizingInformation;
  const SignUpPageTabletPortrait({Key? key,this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SignUpLogic>();
    return Container();
  }
}
class SignUpPageTabletLandscape extends GetView<SignUpLogic> {
  final SizingInformation? sizingInformation;
  const SignUpPageTabletLandscape({Key? key,this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SignUpLogic>();
    return Container();
  }
}
