import 'package:get/get.dart';

import 'resetpassword_logic.dart';

class ResetpasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetpasswordLogic());
  }
}
