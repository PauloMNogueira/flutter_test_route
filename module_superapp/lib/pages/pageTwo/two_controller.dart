import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:module_route/app_routes.dart';
import 'package:module_route/navigation.dart';

class TwoController extends GetxController {
  final AppNavigator _nav;

  TwoController(this._nav);

  @override
  void onReady() {
    super.onReady();
    print(["ENTROU NO CONTROLLER PAGE TWO"]);
  }

  void handleGo() {
    print("HANDLEGO");
    _nav.to(AppPages.loyaltyprofile);
  }
}
