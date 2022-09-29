import 'package:crypto_app/modules/profile/profileLayers/bottomLayer.dart';
import 'package:crypto_app/modules/profile/profileLayers/topLayer.dart';
import 'package:crypto_app/modules/profile/profile_logic.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';

import '../../../shared/constants/colors.dart';
import '../../../widgets/views.dart';
import '../profileLayers/midLayer.dart';

class ProfilePageMobilePortrait extends GetView<ProfileLogic> {
  final SizingInformation? sizingInformation;
  const ProfilePageMobilePortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ProfileLogic>();
    return Scaffold(
      backgroundColor: ConstColors.BACKGROUND,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          Views.appBarViewHome2(
              TitleText: 'My Profile',
              SubTitleText: '',
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
              }
          ),
          ProfilePageTopLayer.profilePageTopLayer(),
          const SizedBox(height: 20,),
          Align(
            alignment: Alignment.centerLeft,
            child: ProfileMidLayer.profileMidLayer(),
          ),
          const SizedBox(height: 20,),
          ProfileBottomLayer.profilePageBottomLayer(),
        ],
      ),
      //bottomNavigationBar: ProfileBottomLayer.profilePageBottomLayer(),
    );
  }
}

class ProfilePageMobileLandscape extends GetView<ProfileLogic> {
  final SizingInformation? sizingInformation;
  const ProfilePageMobileLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ProfileLogic>();
    return Container();
  }
}
