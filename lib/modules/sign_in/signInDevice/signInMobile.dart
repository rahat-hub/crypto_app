import 'package:crypto_app/modules/sign_in/sign_in_logic.dart';
import 'package:crypto_app/shared/constants/colors.dart';
import 'package:crypto_app/shared/constants/font_sizes.dart';
import 'package:crypto_app/widgets/text_fields.dart';
import 'package:crypto_app/widgets/texts.dart';
import 'package:crypto_app/widgets/views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../routes/app-pages.dart';
import '../../../widgets/buttons.dart';

class SignInPageMobilePortrait extends GetView<SignInLogic> {
  final SizingInformation? sizingInformation;

  const SignInPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SignInLogic>();
    return Scaffold(
      backgroundColor: ConstColors.BACKGROUND,
      body: SafeArea(
        child: Column(
          children: [
            Views.appBarView(
              text: 'Sign In',
              onPressed: (){
                Get.offNamed(AppPages.INTRODUCTION);
              }
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: FormBuilder(
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
                              errorText: "Enter email"),
                          FormBuilderValidators.email(
                              errorText: "Please enter valid email"),
                        ])),
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
                    TextFieldView.formField(
                        paddingValue: 20.0,
                        name: 'Password',
                        obscureText: true,
                        key: controller.passFieldKey,
                        label: '...........',
                        inputText: TextInputType.visiblePassword,
                        radiusValue: 10.0,
                        letterSpace: 5.0,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: 'Please enter password'),
                          FormBuilderValidators.minLength(6,allowEmpty: false,
                              errorText: "Password Must be 6 character")
                        ])),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      child: Buttons.buttons(
                        circularValue: 10.0,
                          text: "Sign In",
                          onPressed: () {
                            if (controller.formKey.currentState!.validate()) {
                              controller.formKey.currentState!.save();
                              Get.toNamed(AppPages.DASHBOARD);
                            }
                          }),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Buttons.textButton(texts: "Forgot password?",color: ConstColors.TEXTGREY,align: Alignment.centerRight,fontWeight: FontWeight.w500,onPressed: (){
                        Get.offNamed(AppPages.PASSWORDRECOVERY);
                      }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Texts.texts(texts: "You are not registered ?",textSize: FontSizes.REGULAR),
                        Buttons.textButton(texts: "Create an account",color: ConstColors.BUTTON,fontWeight: FontWeight.w500,textSize: FontSizes.REGULAR,
                            onPressed: (){
                              Get.toNamed(AppPages.SIGNUP);
                            }),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignInPageMobileLandscape extends GetView<SignInLogic> {
  final SizingInformation? sizingInformation;

  const SignInPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SignInLogic>();
    return Container();
  }
}
