import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class ResetpasswordLogic extends GetxController {

  var formKey = GlobalKey<FormBuilderState>();
  var passwordFieldKey1 = GlobalKey<FormBuilderFieldState>();
  var passwordFieldKey2 = GlobalKey<FormBuilderFieldState>();
  var isPasswordHidden1 = true.obs;
  var isPasswordHidden2 = true.obs;


  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
