import 'package:crypto_app/shared/assets/images.dart';
import 'package:crypto_app/shared/constants/colors.dart';
import 'package:crypto_app/shared/constants/font_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../widgets/texts.dart';

class HomePageTopLayer{
  static homePageTopLayer(){
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        width: 300,
        height: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [Color(0xff828080),Color(0xff1F1D1D)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
        ),
        child: cardDesign(),
      ),
    );
  }
}

Widget cardDesign(){
  return Container(
    padding: const EdgeInsets.all(18),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(Images.credit_card_pay_pass_icon),
        ),
        SizedBox(height: 10,),
        SvgPicture.asset(Images.credit_card_sim_logo,width: 50,),
        SizedBox(height: 10,),
        Text('1234    5678    90000   0000',style: Texts.textStyles(
          colors: ConstColors.TEXTWHITE,
          fontWeight: FontWeight.w300,
          textSize: FontSizes.MEDIUM,),
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Joy Laroy',style: Texts.textStyles(
              colors: ConstColors.TEXTWHITE,
              fontWeight: FontWeight.w300,
              textSize: FontSizes.SMALL,),
            ),
            SizedBox(width: 30,),
            Text('12/24',style: Texts.textStyles(
              colors: ConstColors.TEXTWHITE,
              fontWeight: FontWeight.w300,
              textSize: FontSizes.SMALL,),
            ),
          ],
        ),
        Align(
          alignment: Alignment.topRight,
          child: SvgPicture.asset(Images.master_card_logo,width: 60,),
        ),
      ],
    ),
  );
}