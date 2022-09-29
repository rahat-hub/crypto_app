import 'package:crypto_app/shared/assets/images.dart';
import 'package:crypto_app/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import '../../../widgets/views.dart';

class HomePageMidLayer{
  static homePageMidLayer(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,),
      child: SizedBox(
        height: 400,
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            Views.cardViewEvent(
                logoImage: Images.btcLogo,
                leftTitleText: 'BTC',
                leftSubText: '+1,6%',
                chartImage: Images.btcChart,
                logoBackColor: ConstColors.BTC_BACK_COLOR,
                rightTitleText: '\$29,850.15',
                rightSubText: '2.73 BTC'),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
              child: Divider(thickness: 1,color: ConstColors.GREY,),
            ),

            Views.cardViewEvent(
                logoImage: Images.ethLogo,
                leftTitleText: 'ETC',
                leftSubText: '-0,82%',
                chartImage: Images.ethChart,
                logoBackColor: ConstColors.ETH_BACK_COLOR,
                rightTitleText: '\$10,850.15',
                rightSubText: '47.61 ETC'),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
              child: Divider(thickness: 1,color: ConstColors.GREY,),
            ),
            Views.cardViewEvent(
                logoImage: Images.ltcLogo,
                leftTitleText: 'LTC',
                leftSubText: '-2,10%',
                chartImage: Images.ltcChart,
                logoBackColor: ConstColors.LTC_BACK_COLOR,
                rightTitleText: '\$3,676.76',
                rightSubText: '39,27 LTC'),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
              child: Divider(thickness: 1,color: ConstColors.GREY,),
            ),
            Views.cardViewEvent(
                logoImage: Images.xrpLogo,
                leftTitleText: 'XRP',
                leftSubText: '+0,27%',
                chartImage: Images.xrpChart,
                logoBackColor: ConstColors.XRP_BACK_COLOR,
                rightTitleText: '\$5,242.62',
                rightSubText: '16447,65 XRP'),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
              child: Divider(thickness: 1,color: ConstColors.GREY,),
            ),
            Views.cardViewEvent(
                logoImage: Images.btcLogo,
                leftTitleText: 'BTC',
                leftSubText: '+1,6%',
                chartImage: Images.btcChart,
                logoBackColor: ConstColors.BTC_BACK_COLOR,
                rightTitleText: '\$29,850.15',
                rightSubText: '2.73 BTC'),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
              child: Divider(thickness: 1,color: ConstColors.GREY,),
            ),
            Views.cardViewEvent(
                logoImage: Images.ethLogo,
                leftTitleText: 'ETC',
                leftSubText: '-0,82%',
                chartImage: Images.ethChart,
                logoBackColor: ConstColors.ETH_BACK_COLOR,
                rightTitleText: '\$10,850.15',
                rightSubText: '47.61 ETC'),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
              child: Divider(thickness: 1,color: ConstColors.GREY,),
            ),
            Views.cardViewEvent(
                logoImage: Images.ltcLogo,
                leftTitleText: 'LTC',
                leftSubText: '-2,10%',
                chartImage: Images.ltcChart,
                logoBackColor: ConstColors.LTC_BACK_COLOR,
                rightTitleText: '\$3,676.76',
                rightSubText: '39,27 LTC'),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
              child: Divider(thickness: 1,color: ConstColors.GREY,),
            ),
            Views.cardViewEvent(
                logoImage: Images.xrpLogo,
                leftTitleText: 'XRP',
                leftSubText: '+0,27%',
                chartImage: Images.xrpChart,
                logoBackColor: ConstColors.XRP_BACK_COLOR,
                rightTitleText: '\$5,242.62',
                rightSubText: '16447,65 XRP'),
          ],
        ),
      ),
    );
  }
}






















// object mia vai

/*
return Card(
elevation: 2,
shadowColor: Colors.amberAccent,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(1.0),
),
child: ListTile(
leading: SizedBox(
height: 50,
width: 50,
child: SvgPicture.asset(Images.rectangle_2_1,height: double.infinity,),
),
title: Text('BTC',style: Texts.textStyles(
colors: ConstColors.BLUE,
fontWeight: FontWeight.w300,
textSize: FontSizes.SMALL,
),
),
subtitle: Text('+1.6',style: Texts.textStyles(
colors: ConstColors.GREY,
fontWeight: FontWeight.w100,
textSize: FontSizes.EXTRASMALL,
),
),
trailing: Container(
width: 100,
height: 50,
child: SvgPicture.asset(Images.red_liner_chart,height: double.infinity,width:double.infinity,alignment: Alignment.center,),
),


*/
/* Container(
          width: 100,
          height: 30,
          child: Card(
            elevation: 10,
            shadowColor: Colors.greenAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: const BorderSide(
                color: Colors.black,
              ),
            ),
            child: const Center(
              child: Text(
                'Rahat',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ),
        ),*//*


*/
/*Row(
          children: [
            SvgPicture.asset(Images.red_liner_chart,height: double.infinity,),
            Text("29,8850.15",style: Texts.textStyles(
              colors: ConstColors.TEXTWHITE,
              fontWeight: FontWeight.w300,
              textSize: FontSizes.SMALL,
              letterSpace: 2,
            ),)
          ],
        ),*//*

),
);*/
