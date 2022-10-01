import 'package:crypto_app/routes/app-pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../shared/constants/colors.dart';
import '../../../widgets/views.dart';

class TradingBottomLayer{
  static tradingPageBottomLayer(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Views.homePageBottomLayer2(
            icon: const Icon(Icons.grid_view,size: 25,),
            onPressed: (){
              Get.offNamed(AppPages.DASHBOARD);
            }),
        Views.homePageBottomLayer2(
            colorValue: ConstColors.BLUE,
            icon: const Icon(Icons.auto_graph_outlined,size: 25,),
            onPressed: (){
              Get.offNamed(AppPages.TRADING);
            }),
        Views.homePageBottomLayer2(
            icon: const Icon(Icons.credit_card,size: 25,),
            onPressed: (){
              Get.offNamed(AppPages.WALLET);
            }),
        Views.homePageBottomLayer2(
            icon: const Icon(Icons.person,size: 25,),
            onPressed: (){
              Get.offNamed(AppPages.PROFILE);
            }),
      ],
    );
  }
}