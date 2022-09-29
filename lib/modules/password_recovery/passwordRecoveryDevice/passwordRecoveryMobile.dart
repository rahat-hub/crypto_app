import 'package:crypto_app/modules/password_recovery/password_recovery_logic.dart';
import 'package:crypto_app/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../routes/app-pages.dart';
import '../../../shared/constants/font_sizes.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/text_fields.dart';
import '../../../widgets/texts.dart';
import '../../../widgets/views.dart';

class PasswordRecoveryPageMobilePortrait extends GetView<PasswordRecoveryLogic> {
  final SizingInformation? sizingInformation;
  const PasswordRecoveryPageMobilePortrait({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<PasswordRecoveryLogic>();
    return Scaffold(
      backgroundColor: ConstColors.BACKGROUND,
      body: SafeArea(
        child: Column(
          children: [
            Views.appBarView(
              text: 'Password recovery',
              onPressed: (){
                Get.offNamed(AppPages.SIGNIN);
              }
            ),
            FormBuilder(
              key: controller.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0, horizontal: 25.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Texts.texts(
                        texts: 'Mail',
                        colors: ConstColors.TEXTWHITE,
                        fontWeight: FontWeight.w400,
                        align: TextAlign.start,
                        textSize: FontSizes.MEDIUM,
                      ),
                    ),
                  ),
                  TextFieldView.formField(
                      paddingValue: 20.0,
                      name: 'email',
                      obscureText: false,
                      key: controller.emailFieldKey,
                      label: 'Crypto@gmail.com',
                      inputText: TextInputType.emailAddress,
                      radiusValue: 10.0,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: "Enter your recovery email"),
                        FormBuilderValidators.email(
                            errorText: "Please enter valid email"),
                      ])),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 20.0),
                    child: Buttons.buttons(
                      colorValue: ConstColors.BLUE,
                        circularValue: 10.0,
                        text: 'Reestablish',
                        onPressed: () {
                          if (controller.formKey.currentState!.validate()) {
                            controller.formKey.currentState!.save();
                            Get.offNamed(AppPages.PASSWORDRECOVERYCONFIRM);
                          }
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class PasswordRecoveryPageMobileLandscape extends GetView<PasswordRecoveryLogic> {
  final SizingInformation? sizingInformation;
  const PasswordRecoveryPageMobileLandscape({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<PasswordRecoveryLogic>();
    return Container();
  }
}
