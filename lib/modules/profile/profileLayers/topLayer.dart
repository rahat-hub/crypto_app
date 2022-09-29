import 'package:crypto_app/shared/constants/colors.dart';
import 'package:crypto_app/shared/constants/font_sizes.dart';
import 'package:flutter/material.dart';
import '../../../widgets/texts.dart';

class ProfilePageTopLayer{
  static profilePageTopLayer(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        width: double.infinity,
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ConstColors.GREY,
              ),
              child: const Icon(Icons.person,size: 70,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Vilad Belenko',style: Texts.textStyles(
                      colors: ConstColors.TEXTWHITE,
                      textSize: FontSizes.BIG,
                      fontWeight: FontWeight.w600),
                  ),
                  Text('vlad.belenko.web@gmail.com',style: Texts.textStyles(
                      colors: ConstColors.GREY,
                      textSize: FontSizes.MEDIUM,
                      fontWeight: FontWeight.w200),
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