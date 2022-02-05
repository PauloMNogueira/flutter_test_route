import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:module_route/app_routes.dart';
import 'package:module_route/module_route.dart';
import 'package:module_route/navigation.dart';

class OneController extends GetxController {
  final AppNavigator _nav;

  OneController(this._nav);

  @override
  void onReady() {
    super.onReady();
    print(["ENTROU NO CONTROLLER PAGE ONE"]);
  }

  void handleGo() {
    _nav.to("/superapp/pagetwo");
  }
}
