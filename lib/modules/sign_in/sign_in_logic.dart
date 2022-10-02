import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class SignInLogic extends GetxController {

  var formKey = GlobalKey<FormBuilderState>();
  var emailFieldKey = GlobalKey<FormBuilderFieldState>();
  var passFieldKey = GlobalKey<FormBuilderFieldState>();
  var isPasswordHidden = true.obs;
  var rememberMe = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
