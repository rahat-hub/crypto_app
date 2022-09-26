import 'package:get/get.dart';

import 'password_recovey_confirm_logic.dart';

class Password_recovey_confirmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Password_recovey_confirmLogic());
  }
}
