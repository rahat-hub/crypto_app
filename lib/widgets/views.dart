import 'package:crypto_app/shared/assets/images.dart';
import 'package:crypto_app/shared/constants/colors.dart';
import 'package:crypto_app/shared/constants/font_sizes.dart';
import 'package:crypto_app/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
  static AppBarViewHome({titletext,onPressed,subtitletext}){
    return AppBar(
      backgroundColor: ConstColors.BACKGROUND,
      elevation: 2,
      title: Padding(
        padding: const EdgeInsets.fromLTRB(0,30,0,0),
        child: Text(titletext),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(20),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 15),
          child: Align(alignment: Alignment.centerLeft,child: Text(subtitletext,style: Texts.textStyles(textSize: FontSizes.MEDIUM,fontWeight: FontWeight.w300,colors: ConstColors.GREY),)),
        ),
      ),
      shadowColor: ConstColors.TEXTBLUE,
      leadingWidth: 20,
      titleTextStyle: Texts.textStyles(colors: ConstColors.TEXTWHITE,fontWeight: FontWeight.w700,textSize: FontSizes.BIG),
      actions: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0,22,0,0),
          child: IconButton(
            icon: const Icon(Icons.notifications,color: ConstColors.WHITE,size: 25),
            onPressed: () => onPressed (),
          ),
        ),
      ],
    );
  }
  static cardViewEvent({leftTitleText,leftSubText,logoImage,rightTitleText,rightSubText,chartImage,logoBackColor}){
    return SizedBox(
      width: double.infinity,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: logoBackColor,
              ),
              child: SizedBox(
                width: 10,
                height: 10,
                child: Image.asset(logoImage),
              )
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(leftTitleText,style: Texts.textStyles(textSize: FontSizes.BIG,fontWeight: FontWeight.w500,colors: ConstColors.TEXTWHITE,)),
              Text(leftSubText,style: Texts.textStyles(textSize: FontSizes.MEDIUM,fontWeight: FontWeight.w300,colors: ConstColors.GREY,)),
            ],
          ),

          Image.asset(chartImage,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(rightTitleText,style: Texts.textStyles(textSize: FontSizes.BIG,fontWeight: FontWeight.w500,colors: ConstColors.TEXTWHITE,)),
              Text(rightSubText,style:  Texts.textStyles(textSize: FontSizes.MEDIUM,fontWeight: FontWeight.w300,colors: ConstColors.GREY,)),
            ],
          ),
        ],
      ),
    );
  }
}