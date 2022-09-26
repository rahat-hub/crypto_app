import 'package:crypto_app/modules/sign_in/sign_in_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SignInPageTabletPortrait extends GetView<SignInLogic> {

  final SizingInformation? sizingInformation;

  const SignInPageTabletPortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SignInLogic>();
    return Container();
  }
}

class SignInPageTabletLandscape extends GetView<SignInLogic> {

  final SizingInformation? sizingInformation;

  const SignInPageTabletLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SignInLogic>();
    return Container();

  }
}