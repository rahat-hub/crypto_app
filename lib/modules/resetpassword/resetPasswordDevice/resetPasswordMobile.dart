import 'package:crypto_app/modules/resetpassword/resetpassword_logic.dart';
import 'package:crypto_app/widgets/views.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../routes/app-pages.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/constants/font_sizes.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/text_fields.dart';
import '../../../widgets/texts.dart';

class ResetPasswordPageMobilePortrait extends GetView<ResetpasswordLogic> {
  final SizingInformation? sizingInformation;

  const ResetPasswordPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ResetpasswordLogic>();
    return Scaffold(
        backgroundColor: ConstColors.BACKGROUND,
        body: Column(
          children: [
            Views.appBarView(
              text: 'Password Recovery',
              onPressed: () {
                Get.toNamed(AppPages.PASSWORDRECOVERY);
              },
            ),
            FormBuilder(
              key: controller.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0, horizontal: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Texts.texts(
                        texts: 'Password',
                        colors: ConstColors.TEXTWHITE,
                        fontWeight: FontWeight.w400,
                        align: TextAlign.start,
                        textSize: FontSizes.MEDIUM,
                      ),
                    ),
                  ),
                  Obx(() {
                    return TextFieldView.formField(
                        passwordIcon: controller.isPasswordHidden1.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                        onTap: () {
                          controller.isPasswordHidden1.value =
                          !controller.isPasswordHidden1.value;
                        },
                        paddingValue: 20.0,
                        name: 'Password1',
                        obscureText: controller.isPasswordHidden1.value,
                        key: controller.passwordFieldKey1,
                        label: '. . . . .',
                        inputText: TextInputType.visiblePassword,
                        radiusValue: 10.0,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: "Enter Password"),
                          FormBuilderValidators.minLength(6,
                              allowEmpty: false,
                              errorText: "Password must be 6 character"),
                        ]));
                  }),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Texts.texts(
                        texts: 'Password',
                        colors: ConstColors.TEXTWHITE,
                        fontWeight: FontWeight.w400,
                        align: TextAlign.start,
                        textSize: FontSizes.MEDIUM,
                      ),
                    ),
                  ),
                  Obx(() {
                    return TextFieldView.formField(
                        passwordIcon: controller.isPasswordHidden2.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                        onTap: () {
                          controller.isPasswordHidden2.value =
                          !controller.isPasswordHidden2.value;
                        },
                        paddingValue: 20.0,
                        name: 'Password',
                        obscureText: controller.isPasswordHidden2.value,
                        key: controller.passwordFieldKey2,
                        label: '. . . . .',
                        inputText: TextInputType.visiblePassword,
                        radiusValue: 10.0,
                        letterSpace: 5.0,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: 'Please enter password'),
                          FormBuilderValidators.minLength(6,
                              allowEmpty: false,
                              errorText: "Password Must be 6 character")
                        ]));
                  }),
                ],
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: Buttons.buttons(
                  colorValue: ConstColors.BLUE,
                  circularValue: 10.0,
                  text: "RESET",
                  onPressed: () {
                    if (controller.formKey.currentState!.validate()) {
                      if(controller.passwordFieldKey1.currentState!.value == controller.passwordFieldKey2.currentState!.value){
                        controller.formKey.currentState!.save();
                        Get.offAllNamed(AppPages.SIGNIN);
                      }
                      else{
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Password is not match!',style: Texts.textStyles(
                                  colors: ConstColors.GREY,
                                  textSize: FontSizes.BIG,
                                  fontWeight: FontWeight.w500),
                              ),
                            )
                        );
                      }
                    }
                  }),
            ),
          ],
        ));
  }
}

class ResetPasswordPageMobileLandscape extends GetView<ResetpasswordLogic> {
  final SizingInformation? sizingInformation;

  const ResetPasswordPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ResetpasswordLogic>();
    return Container();
  }
}
