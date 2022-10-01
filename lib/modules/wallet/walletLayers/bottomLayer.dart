import 'package:crypto_app/routes/app-pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../shared/assets/images.dart';
import '../../../shared/constants/colors.dart';
import '../../../widgets/views.dart';

class WalletBottomLayer {
  static walletPageNavigationBottomLayer() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Views.homePageBottomLayer2(
              icon: const Icon(
                Icons.grid_view,
                size: 25,
              ),
              onPressed: () {
                Get.offNamed(AppPages.DASHBOARD);
              }),
          Views.homePageBottomLayer2(
              icon: const Icon(
                Icons.auto_graph_outlined,
                size: 25,
              ),
              onPressed: () {
                Get.offNamed(AppPages.TRADING);
              }),
          Views.homePageBottomLayer2(
              icon: const Icon(
                Icons.credit_card,
                size: 25,
              ),
              colorValue: ConstColors.BLUE,
              onPressed: () {
                Get.offNamed(AppPages.WALLET);
              }),
          Views.homePageBottomLayer2(
              icon: const Icon(
                Icons.person,
                size: 25,
              ),
              onPressed: () {
                Get.offNamed(AppPages.PROFILE);
              }),
        ],
      ),
    );
  }

  static walletPageBottomLayer({context}) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Divider(
                thickness: 1,
                color: ConstColors.GREY,
              ),
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
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Divider(
                thickness: 1,
                color: ConstColors.GREY,
              ),
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
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Divider(
                thickness: 1,
                color: ConstColors.GREY,
              ),
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
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Divider(
                thickness: 1,
                color: ConstColors.GREY,
              ),
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
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Divider(
                thickness: 1,
                color: ConstColors.GREY,
              ),
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
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Divider(
                thickness: 1,
                color: ConstColors.GREY,
              ),
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
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Divider(
                thickness: 1,
                color: ConstColors.GREY,
              ),
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
