import 'package:crypto_app/shared/assets/images.dart';
import 'package:crypto_app/shared/constants/colors.dart';
import 'package:crypto_app/shared/constants/font_sizes.dart';
import 'package:crypto_app/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Views{
  static appBarView({text,onPressed}){
    return SizedBox(
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
      image: Image.asset(imageValue, width: 350.0,alignment: Alignment.center),
      decoration: PageDecoration(
        bodyTextStyle: Texts.textStyles(textSize: FontSizes.BIG,fontWeight: FontWeight.w600),
        bodyPadding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
        //pageColor: Colors.white,
        imagePadding: const EdgeInsets.fromLTRB(0.0, 150.0, 0.0, 0.0),
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
        preferredSize: const Size.fromHeight(20),
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

  static appBarViewHome2({TitleText, SubTitleText, icon,onPressed}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                TitleText,
                style: Texts.textStyles(
                    textSize: FontSizes.BIG,
                    colors: ConstColors.TEXTWHITE,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                SubTitleText,
                style: Texts.textStyles(
                    textSize: FontSizes.REGULAR,
                    colors: ConstColors.GREY,
                    fontWeight: FontWeight.w200),
              )
            ],
          ),
          IconButton(
            icon: Icon(icon, color: ConstColors.WHITE, size: 25),
            onPressed: () => onPressed(),
          )
        ],
      ),
    );
  }
  static homePageBottomLayer2({icon,onPressed,colorValue = ConstColors.TEXTWHITE}){
    return IconButton(
      icon: icon,
      color: colorValue,
      onPressed: () => onPressed(),
    );
  }

  static profilePageBottomLayer2({image,onPressed,iconText}){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: ConstColors.BACKGROUND,
        ),
        child: Row(
          children: [
            Image.asset(image),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                iconText,
                style: Texts.textStyles(
                    colors: ConstColors.TEXTWHITE,
                    textSize: FontSizes.BIG,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        onPressed: () => onPressed(),
      ),
    );
  }

  static walletCardViewEvent({cardTitleName,subTitleName,cryptoImage,currentBalance,ratioLevel}){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(cardTitleName,style: Texts.textStyles(
                    colors: ConstColors.TEXTWHITE,
                    fontWeight: FontWeight.w600,
                    textSize: FontSizes.MEDIUM),
                ),
                Image.asset(cryptoImage,width: 20,),
              ],
            ),
          ),
          Text(subTitleName,style: Texts.textStyles(
              colors: ConstColors.GREY,
              fontWeight: FontWeight.w200,
              textSize: FontSizes.SMALL),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(currentBalance,style: Texts.textStyles(
                    colors: ConstColors.TEXTWHITE,
                    fontWeight: FontWeight.w800,
                    textSize: FontSizes.BIG),
                ),
                Text(ratioLevel,style: Texts.textStyles(
                    colors: ConstColors.TEXTWHITE,
                    fontWeight: FontWeight.w300,
                    textSize: FontSizes.SMALL),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static cardDetailsSmallView({currency, value, icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
      child: Container(
        width: 130.0,
        height: 30.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 57, 57, 57),
            Color.fromARGB(125, 85, 85, 85),
            Color.fromARGB(140, 45, 45, 45),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Texts.texts(texts: currency, fontWeight: FontWeight.w500,textSize: FontSizes.REGULAR),
            Texts.texts(texts: value, fontWeight: FontWeight.w500,textSize: FontSizes.REGULAR),
            Icon(icon, color: ConstColors.WHITE),
          ],
        ),
      ),
    );
  }
}