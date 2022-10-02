import 'package:crypto_app/modules/sign_up/sign_up_logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../routes/app-pages.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/constants/font_sizes.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/text_fields.dart';
import '../../../widgets/texts.dart';
import '../../../widgets/views.dart';

class SignUpPageMobilePortrait extends GetView<SignUpLogic> {
  final SizingInformation? sizingInformation;

  const SignUpPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SignUpLogic>();
    return Scaffold(
      backgroundColor: ConstColors.BACKGROUND,
      body: SafeArea(
        child: Column(
          children: [
            Views.appBarView(
                text: 'Sign Up',
                onPressed: () {
                  Get.offNamed(AppPages.SIGNIN);
                }
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: FormBuilder(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 25.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Texts.texts(
                            texts: 'Name',
                            colors: ConstColors.TEXTWHITE,
                            fontWeight: FontWeight.w400,
                            align: TextAlign.start,
                            textSize: FontSizes.MEDIUM,
                          ),
                        ),
                      ),
                      TextFieldView.formField(
                          paddingValue: 20.0,
                          name: 'name',
                          obscureText: false,
                          key: controller.nameFieldKey,
                          label: 'Rahat',
                          inputText: TextInputType.name,
                          radiusValue: 10.0,
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                                errorText: "Enter Your name"),
                            FormBuilderValidators.minLength(5,
                                errorText: "name is too short"),
                          ])),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 25.0),
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
                          name: 'mail',
                          obscureText: false,
                          key: controller.emailFieldKey,
                          label: 'Crypto@gmail.com',
                          inputText: TextInputType.emailAddress,
                          radiusValue: 10.0,
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                                errorText: "Enter mail"),
                            FormBuilderValidators.email(
                                errorText: "mail is not valid"),
                          ])),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 25.0),
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
                            name: 'Password',
                            obscureText: controller.isPasswordHidden1.value,
                            key: controller.pass1FieldKey,
                            label: '. . . . . .',
                            textSize: FontSizes.BIG,
                            letterSpace: 2,
                            inputText: TextInputType.visiblePassword,
                            radiusValue: 10.0,
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(
                                  errorText: "Enter password"),
                              FormBuilderValidators.minLength(6,
                                  errorText: "password must be 6 character"),
                            ]));
                      }),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 25.0),
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
                            key: controller.pass2FieldKey,
                            label: '. . . . .',
                            inputText: TextInputType.visiblePassword,
                            radiusValue: 10.0,
                            letterSpace: 5,
                            textSize: FontSizes.BIG,
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(
                                  errorText: "Enter password"),
                              FormBuilderValidators.minLength(6,
                                  errorText: "password must be 6 character"),
                            ]));
                      }),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        child: Buttons.buttons(
                            colorValue: ConstColors.BLUE,
                            circularValue: 10.0,
                            text: "Sign Up",
                            onPressed: () {
                              if (controller.formKey.currentState!.validate()) {
                                if(controller.pass1FieldKey.currentState!.value == controller.pass2FieldKey.currentState!.value){
                                  controller.formKey.currentState!.save();
                                  Get.offNamed(AppPages.SIGNIN);
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
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpPageMobileLandscape extends GetView<SignUpLogic> {
  final SizingInformation? sizingInformation;

  const SignUpPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SignUpLogic>();
    return Container();
  }
}
