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
import '../../../shared/assets/images.dart';
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
      body: Column(
        children: [
          SizedBox(height: 30,),
          Views.appBarView(
              text: 'Sign In',
              onPressed: () {
                Get.offNamed(AppPages.INTRODUCTION);
              }),
          Expanded(
            child: SingleChildScrollView(
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
                    Obx(() {
                      return TextFieldView.formField(
                          passwordIcon: controller.isPasswordHidden.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                          onTap: () {
                            controller.isPasswordHidden.value =
                                !controller.isPasswordHidden.value;
                          },
                          paddingValue: 20.0,
                          name: 'Password',
                          obscureText: controller.isPasswordHidden.value,
                          key: controller.passFieldKey,
                          label: '...........',
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Obx(() {
                              return Checkbox(
                                  value: controller.rememberMe.value,
                                  checkColor: Colors.red,
                                  //fillColor: MaterialStatePropertyAll(ConstColors.GREY),
                                  activeColor: ConstColors.TEXTWHITE,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2.0),
                                  ),
                                  side: BorderSide(width: 2.0,color: ConstColors.TEXTWHITE),
                                  onChanged: (value) {
                                    print(value);
                                    controller.rememberMe.value = value!;
                                  });
                            }),
                          ),
                          Text(
                            'Remember me',
                            style: Texts.textStyles(
                                colors: ConstColors.TEXTWHITE,
                                textSize: FontSizes.REGULAR,
                                fontWeight: FontWeight.w100),
                          ),
                          Expanded(
                            //alignment: Alignment.centerRight,
                            child: Buttons.textButton(
                                texts: "Forgot password?",
                                color: ConstColors.TEXTGREY,
                                align: Alignment.centerRight,
                                fontWeight: FontWeight.w500,
                                onPressed: () {
                                  Get.offNamed(AppPages.PASSWORDRECOVERY);
                                }),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      child: Buttons.buttons(
                          colorValue: ConstColors.BLUE,
                          circularValue: 10.0,
                          text: "Sign In",
                          onPressed: () {
                            if (controller.formKey.currentState!.validate()) {
                              controller.formKey.currentState!.save();
                              Get.offAllNamed(AppPages.DASHBOARD);
                            }
                          }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Texts.texts(
                            texts: "You are not registered ?",
                            textSize: FontSizes.REGULAR),
                        Buttons.textButton(
                            texts: "Create an account",
                            color: ConstColors.BUTTON,
                            fontWeight: FontWeight.w500,
                            textSize: FontSizes.REGULAR,
                            onPressed: () {
                              Get.toNamed(AppPages.SIGNUP);
                            }),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CardDesign.cardDesign(imageName: Images.appleLogo),
                        CardDesign.cardDesign(imageName: Images.googleLogo),
                        CardDesign.cardDesign(imageName: Images.mataLogo),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
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

class CardDesign{
     static cardDesign({imageName}){
       return Container(
         width: 100,
         height: 50,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(20),
           color: ConstColors.GREY,
         ),
         child: Image.asset(imageName,width: 70,),
       );
     }
}