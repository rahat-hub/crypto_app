import 'package:crypto_app/routes/app-pages.dart';
import 'package:get/get.dart';

class SplashLogic extends GetxController{
  @override
  void onInit() {
    super.onInit();
    _navigatetohome();
  }
  _navigatetohome() async{
    await Future.delayed(const Duration(milliseconds: 3000),(){});
    Get.offNamed(AppPages.INTRODUCTION);
  }

  @override
  void onReady() {
    super.onReady();
  }
  @override
  void onClose() {
    super.onClose();
  }
}
