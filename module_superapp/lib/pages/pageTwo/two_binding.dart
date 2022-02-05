import 'package:get/instance_manager.dart';
import 'package:module_superapp/home_controller.dart';
import 'package:module_superapp/pages/pageOne/one_controller.dart';

class TwoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OneController(Get.find()));
  }
}
