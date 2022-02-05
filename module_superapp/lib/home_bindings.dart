import 'package:get/instance_manager.dart';
import 'package:module_superapp/home_controller.dart';
import 'package:module_superapp/pages/pageOne/one_controller.dart';
import 'package:module_superapp/pages/pageTwo/two_controller.dart';

class SuperAppHomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeSuperAppController(Get.find()));
    Get.lazyPut(() => OneController(Get.find()));
    Get.lazyPut(() => TwoController(Get.find()));
  }
}
