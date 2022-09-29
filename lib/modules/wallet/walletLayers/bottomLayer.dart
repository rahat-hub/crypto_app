import 'package:crypto_app/routes/app-pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../shared/constants/colors.dart';
import '../../../widgets/views.dart';

class WalletBottomLayer{
  static walletPageBottomLayer(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Views.homePageBottomLayer2(
            icon: Icon(Icons.grid_view,color: ConstColors.TEXTWHITE,size: 25,),
            onPressed: (){
              Get.offNamed(AppPages.DASHBOARD);
            }),
        Views.homePageBottomLayer2(
            icon: Icon(Icons.auto_graph_outlined,color: ConstColors.TEXTWHITE,size: 25,),
            onPressed: (){
              Get.offNamed(AppPages.TRADING);
            }),
        Views.homePageBottomLayer2(
            icon: Icon(Icons.credit_card,color: ConstColors.TEXTWHITE,size: 25,),
            onPressed: (){
              Get.offNamed(AppPages.WALLET);
            }),
        Views.homePageBottomLayer2(
            icon: Icon(Icons.person,color: ConstColors.TEXTWHITE,size: 25,),
            onPressed: (){
              Get.offNamed(AppPages.PROFILE);
            }),
      ],
    );
  }
}