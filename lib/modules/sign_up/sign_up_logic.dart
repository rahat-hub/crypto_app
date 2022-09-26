import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class SignUpLogic extends GetxController {

  var formKey = GlobalKey<FormBuilderState>();
  var nameFieldkey = GlobalKey<FormBuilderState>();
  var emailFieldKey = GlobalKey<FormBuilderFieldState>();
  var passFieldKey_1 = GlobalKey<FormBuilderFieldState>();
  var passFieldKey_2 = GlobalKey<FormBuilderFieldState>();

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
