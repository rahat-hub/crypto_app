import 'package:crypto_app/routes/app-pages.dart';
import 'package:crypto_app/shared/constants/colors.dart';
import 'package:crypto_app/widgets/buttons.dart';
import 'package:get/get.dart';

class ProfileBottomLayer{
  static profilePageBottomLayer(){
    return Buttons.buttons(
        colorValue: ConstColors.TRANSPARENT,
        value: 30.0,
        text: 'Sign Out',
        circularValue: 20.0,
        onPressed: (){
          Get.offAllNamed(AppPages.SIGNIN);
        } );
  }
}