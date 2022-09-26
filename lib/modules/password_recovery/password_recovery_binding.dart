import 'package:get/get.dart';

import 'password_recovery_logic.dart';

class PasswordRecoveryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PasswordRecoveryLogic());
  }
}
