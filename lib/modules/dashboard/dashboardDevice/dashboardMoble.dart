import 'package:crypto_app/modules/dashboard/dashboardLayers/bottomLayer.dart';
import 'package:crypto_app/modules/dashboard/dashboardLayers/topLayer.dart';
import 'package:crypto_app/shared/constants/font_sizes.dart';
import 'package:crypto_app/widgets/views.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../shared/constants/colors.dart';
import '../../../widgets/texts.dart';
import '../dashboardLayers/midLayer.dart';
import '../dashboard_logic.dart';

class HomePageMobilePortrait extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;

  const HomePageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<DashboardLogic>();
    return Scaffold(
      backgroundColor: ConstColors.BACKGROUND,
      body: Column(
          children: [
            const SizedBox(height: 20,),
            Views.appBarViewHome2(
                TitleText: 'Hello Vlad',
                SubTitleText: 'Welcome back!',
                icon: Icons.notifications,
                onPressed: (){
                  Get.snackbar(
                    'Notification',
                    'No notifications',
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: ConstColors.TRANSPARENT,
                    colorText: ConstColors.GREY,
                    margin: const EdgeInsets.all(20),
                    icon: const Icon(
                      Icons.thumb_up,
                      color: ConstColors.BLUE,
                    ),
                    shouldIconPulse: false,
                  );
                } ),
            HomePageTopLayer.homePageTopLayer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Live price',style: Texts.textStyles(
                    textSize: FontSizes.BIG,
                    fontWeight: FontWeight.w400,
                    colors: ConstColors.TEXTWHITE,
                    ),
                  ),
                  Text('See All',style: Texts.textStyles(
                    textSize: FontSizes.MEDIUM,
                    fontWeight: FontWeight.w300,
                    colors: ConstColors.TEXTWHITE,
                    ),
                  ),
                ],
              ),
            ),
            HomePageMidLayer.homePageMidLayer(),
          ],
        ),
      bottomNavigationBar: HomePageBottomLayer.homePageBottomLayer(),
    );
  }
}

class HomePageMobileLandscape extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;

  const HomePageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<DashboardLogic>();
    return Container();
  }
}
