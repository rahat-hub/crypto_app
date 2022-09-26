import 'package:crypto_app/routes/app-pages.dart';
import 'package:crypto_app/shared/assets/images.dart';
import 'package:crypto_app/shared/constants/colors.dart';
import 'package:crypto_app/shared/constants/font_sizes.dart';
import 'package:crypto_app/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Views{
  static appBarView({text,onPressed}){
    return Container(
      width: double.infinity,
      height: 70,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back,color: ConstColors.WHITE,),
              onPressed: () => onPressed (),
            ),
            Texts.texts(texts: text,fontWeight: FontWeight.w700,colors: ConstColors.TEXTWHITE,textSize: FontSizes.BIG,),
            SvgPicture.asset(Images.appBarScanner),
          ],
        ),
      ),
    );
  }
  static pageViewModle({text,imageValue}){
    return PageViewModel(
      title: '',
      body: text,
      image: Image.asset(imageValue, width: 350,alignment: Alignment.center),
      decoration: PageDecoration(
        bodyTextStyle: Texts.textStyles(textSize: FontSizes.BIG,fontWeight: FontWeight.w600),
        bodyPadding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
        //pageColor: Colors.white,
        imagePadding: EdgeInsets.fromLTRB(0, 150, 0, 0),
      ),
    );
  }
}