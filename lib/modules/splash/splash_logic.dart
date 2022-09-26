import 'package:crypto_app/routes/app-pages.dart';
import 'package:crypto_app/routes/app-routes.dart';
import 'package:get/get.dart';

class SplashLogic extends GetxController{
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _navigatetohome();
  }
  _navigatetohome() async{
    await Future.delayed(Duration(milliseconds: 3000),(){});
    Get.offNamed(AppPages.INTRODUCTION);
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
