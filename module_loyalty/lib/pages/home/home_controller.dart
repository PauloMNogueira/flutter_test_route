import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:module_route/app_routes.dart';
import 'package:module_route/navigation.dart';

class HomeLoyaltyController extends GetxController {
  final AppNavigator _nav;

  HomeLoyaltyController(this._nav);

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    print(["ENTROU NO CONTROLLER LOALTY"]);
  }

  void handleGo() {
    _nav.to(AppPages.superapphome);
  }
}
