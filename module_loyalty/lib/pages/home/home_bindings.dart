import 'package:get/instance_manager.dart';
import 'package:module_loyalty/pages/home/home_controller.dart';

class LoyaltyHomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeLoyaltyController(Get.find()));
  }
}
