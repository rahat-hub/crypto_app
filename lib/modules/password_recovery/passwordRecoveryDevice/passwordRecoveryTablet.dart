import 'package:crypto_app/modules/password_recovery/password_recovery_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PasswordRecoveryPageTabletPortrait extends GetView<PasswordRecoveryLogic> {
  final SizingInformation? sizingInformation;
  const PasswordRecoveryPageTabletPortrait({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<PasswordRecoveryLogic>();
    return Container();
  }
}
class PasswordRecoveryPageTabletLandscape extends GetView<PasswordRecoveryLogic> {
  final SizingInformation? sizingInformation;
  const PasswordRecoveryPageTabletLandscape({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<PasswordRecoveryLogic>();
    return Container();
  }
}