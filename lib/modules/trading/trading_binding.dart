import 'package:get/get.dart';

import 'trading_logic.dart';

class TradingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TradingLogic());
  }
}
