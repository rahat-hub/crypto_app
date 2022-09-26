import 'package:crypto_app/modules/password_recovery/passwordRecoveryConfirm/password_recovey_confirm/password_recovey_confirm_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PasswordRecoveryConfirmPageTabletPortrait extends GetView<Password_recovey_confirmLogic> {

  final SizingInformation? sizingInformation;

  const PasswordRecoveryConfirmPageTabletPortrait({Key? key,this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<Password_recovey_confirmLogic>();
    return Container();
  }
}

class PasswordRecoveryConfirmPageTabletLandscape extends GetView<Password_recovey_confirmLogic> {
  final SizingInformation? sizingInformation;
  const PasswordRecoveryConfirmPageTabletLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<Password_recovey_confirmLogic>();
    return Container();
  }
}