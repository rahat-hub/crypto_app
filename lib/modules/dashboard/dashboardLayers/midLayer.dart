import 'package:crypto_app/shared/assets/images.dart';
import 'package:crypto_app/shared/constants/colors.dart';
import 'package:crypto_app/shared/constants/font_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../widgets/texts.dart';

class HomePageMidLayer{
  static homePageMidLayer(){
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        CardViewEvent.cardViewEvent(),
      ],
    );
  }
}
class CardViewEvent{
  static cardViewEvent(){
    return Card(
      elevation: 2,
      shadowColor: Colors.amberAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(1.0),
      ),
      child: ListTile(
        leading: SizedBox(
          height: 10,
          width: 10,
          child: SvgPicture.asset(Images.rectangle_2_1,height: double.infinity,),
        ),
        title: Text('BTC',style: Texts.textStyles(
          colors: ConstColors.TEXTWHITE,
          fontWeight: FontWeight.w300,
          textSize: FontSizes.SMALL,
          letterSpace: 2,
          ),
        ),
        subtitle: Text('+1.6',style: Texts.textStyles(
          colors: ConstColors.TEXTWHITE,
          fontWeight: FontWeight.w100,
          textSize: FontSizes.EXTRASMALL,
          ),
        ),
        trailing: Row(
          children: [
            SvgPicture.asset(Images.red_liner_chart,height: double.infinity,),
            Text("29,8850.15",style: Texts.textStyles(
              colors: ConstColors.TEXTWHITE,
              fontWeight: FontWeight.w300,
              textSize: FontSizes.SMALL,
              letterSpace: 2,
            ),)
          ],
        ),
      ),
    );
  }
}