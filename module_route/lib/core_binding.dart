import 'package:get/get.dart';
import 'package:module_route/navigation.dart';

class CoreBinding implements Bindings {
  @override
  void dependencies() {
    print(["Entrou no corebinding"]);
    Get.put(AppNavigator(), permanent: true);
  }
}
