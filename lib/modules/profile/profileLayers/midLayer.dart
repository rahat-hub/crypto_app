import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../shared/assets/images.dart';
import '../../../widgets/views.dart';

/*class ProfileMidLayer {
  static profileMidlayer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Views.homePageBottomLayer2(
                icon: Image.asset(Images.walletIcon),
                onPressed: () {
                  print('abc');
                }),
            Text(
              'My Waller',
              style: Texts.textStyles(
                  colors: ConstColors.TEXTWHITE,
                  textSize: FontSizes.BIG,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Row(
          children: [
            Views.homePageBottomLayer2(
                icon: Image.asset(Images.portfolioIcon),
                onPressed: () {
                  print('abc');
                }),
            Text(
              'Portfolio',
              style: Texts.textStyles(
                  colors: ConstColors.TEXTWHITE,
                  textSize: FontSizes.BIG,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Row(
          children: [
            Views.homePageBottomLayer2(
                icon: Image.asset(Images.statisticIcon),
                onPressed: () {
                  print('abc');
                }),
            Text(
              'Statistic',
              style: Texts.textStyles(
                  colors: ConstColors.TEXTWHITE,
                  textSize: FontSizes.BIG,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Row(
          children: [
            Views.homePageBottomLayer2(
                icon: Image.asset(Images.transferIcon),
                onPressed: () {
                  print('abc');
                }),
            Text(
              'Transfer',
              style: Texts.textStyles(
                  colors: ConstColors.TEXTWHITE,
                  textSize: FontSizes.BIG,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Row(
          children: [
            Views.homePageBottomLayer2(
                icon: Image.asset(Images.withDrawIcon),
                onPressed: () {
                  print('abc');
                }),
            Text(
              'Withdraw',
              style: Texts.textStyles(
                  colors: ConstColors.TEXTWHITE,
                  textSize: FontSizes.BIG,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Row(
          children: [
            Views.homePageBottomLayer2(
                icon: Image.asset(Images.settingIcon),
                onPressed: () {
                  print('abc');
                }),
            Text(
              'Setting',
              style: Texts.textStyles(
                  colors: ConstColors.TEXTWHITE,
                  textSize: FontSizes.BIG,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Row(
          children: [
            Views.homePageBottomLayer2(
                icon: Image.asset(Images.historyIcon),
                onPressed: () {
                  print('abc');
                }),
            Text(
              'Setting',
              style: Texts.textStyles(
                  colors: ConstColors.TEXTWHITE,
                  textSize: FontSizes.BIG,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ],
    );
  }
}*/

class ProfileMidLayer{
  static profileMidLayer(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Views.profilePageBottomLayer2(
          image: Images.walletIcon,
          iconText: 'My Wallet',
          onPressed: (){
            print('hello');
          },
        ),
        Views.profilePageBottomLayer2(
          image: Images.portfolioIcon,
          iconText: 'Portfolio',
          onPressed: (){
            print('hello');
          },
        ),
        Views.profilePageBottomLayer2(
          image: Images.statisticIcon,
          iconText: 'Statics',
          onPressed: (){
            print('hello');
          },
        ),
        Views.profilePageBottomLayer2(
          image: Images.transferIcon,
          iconText: 'Transfer',
          onPressed: (){
            print('hello');
          },
        ),
        Views.profilePageBottomLayer2(
          image: Images.withDrawIcon,
          iconText: 'Withdraw',
          onPressed: (){
            print('hello');
          },
        ),
        Views.profilePageBottomLayer2(
          image: Images.settingIcon,
          iconText: 'Setting',
          onPressed: (){
            print('hello');
          },
        ),
        Views.profilePageBottomLayer2(
          image: Images.historyIcon,
          iconText: 'History',
          onPressed: (){
            print('hello');
          },
        ),
      ],
    );
  }
}
