import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../shared/assets/images.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/constants/font_sizes.dart';
import '../../../widgets/texts.dart';

class WalletPageTopLayer{
  static walletPageTaopLayer(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Container(
        width: double.infinity,
        height: 220,
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
    padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: SvgPicture.asset(Images.creditCardPayPassIcon),
        ),
        const SizedBox(height: 10,),
        SvgPicture.asset(Images.creditCardSimLogo,width: 50,),
        const SizedBox(height: 10,),
        Text('1234    5678    90000   0000',style: Texts.textStyles(
          colors: ConstColors.TEXTWHITE,
          fontWeight: FontWeight.w300,
          textSize: FontSizes.MEDIUM,),
        ),
        const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Joy Laroy',style: Texts.textStyles(
              colors: ConstColors.TEXTWHITE,
              fontWeight: FontWeight.w300,
              textSize: FontSizes.SMALL,),
            ),
            const SizedBox(width: 30,),
            Text('12/24',style: Texts.textStyles(
              colors: ConstColors.TEXTWHITE,
              fontWeight: FontWeight.w300,
              textSize: FontSizes.SMALL,),
            ),
          ],
        ),
        Align(
          alignment: Alignment.topRight,
          child: SvgPicture.asset(Images.masterCardLogo,width: 60,),
        ),
      ],
    ),
  );
}
