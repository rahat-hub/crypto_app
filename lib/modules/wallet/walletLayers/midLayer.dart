import 'package:flutter/material.dart';
import '../../../shared/assets/images.dart';
import '../../../widgets/views.dart';

class WalletPageMidLayer{
  static walletPageMidLayer(){

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 5.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            cardDesign(
                cardTitleName: 'BTC',
                cryptoImage: Images.btcLogo,
                subTitleName: 'Portfolio',
                currentBalance: '\$40.05',ratioLevel: '+78%'),
            cardDesign(
                cardTitleName: 'ENT',
                cryptoImage: Images.ethLogo,
                subTitleName: 'Portfolio',
                currentBalance: '\$150.05',ratioLevel: '+20%'),
            cardDesign(
                cardTitleName: 'LTC',
                cryptoImage: Images.ltcLogo,
                subTitleName: 'Portfolio',
                currentBalance: '\$90.05',ratioLevel: '-20%'),
            cardDesign(
                cardTitleName: 'XRP',
                cryptoImage: Images.xrpLogo,
                subTitleName: 'Portfolio',
                currentBalance: '\$47.05',ratioLevel: '+9%'),
          ],
        ),
      ),
    );
  }
}

Widget cardDesign({cardTitleName,subTitleName,cryptoImage,currentBalance,ratioLevel}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 0.0),
    child: Container(
      width: 200,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: const LinearGradient(
            colors: [Color(0xff828080),Color(0xff1F1D1D)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
        ),
      ),
      child: Views.walletCardViewEvent(cardTitleName: cardTitleName,cryptoImage: cryptoImage,subTitleName: subTitleName,currentBalance: currentBalance,ratioLevel: ratioLevel),
    ),
  );
}