import 'package:get/get.dart';

import '../../../../routes/app-pages.dart';

class Password_recovey_confirmLogic extends GetxController {

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _navigatetohome();
  }
  _navigatetohome() async{
    await Future.delayed(Duration(milliseconds: 3000),(){});
    Get.offNamed(AppPages.SIGNIN);
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
