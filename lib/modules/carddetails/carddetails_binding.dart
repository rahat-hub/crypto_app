import 'package:get/get.dart';

import 'carddetails_logic.dart';

class CarddetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarddetailsLogic());
  }
}
