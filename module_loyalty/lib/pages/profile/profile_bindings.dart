import 'package:get/instance_manager.dart';
import 'package:module_loyalty/pages/profile/profile_controller.dart';

class LoyaltyProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileLoyaltyController(Get.find()));
  }
}
