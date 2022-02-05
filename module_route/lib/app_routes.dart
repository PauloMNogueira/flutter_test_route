import 'package:module_loyalty/pages/home/module_loyalty.dart';
import 'package:module_loyalty/pages/profile/profile_page.dart';
import 'package:module_route/app_base_page.dart';
import 'package:module_superapp/module_superapp.dart';

abstract class AppPages {
  static const loyaltyhome = '/loyalty';
  static const superapphome = '/superapp';
  static const loyaltyprofile = '/loyalty/profile';

  static final pages = [
    AppPageBuilder(LoyaltyHome()),
    AppPageBuilder(SuperAppHome()),
    AppPageBuilder(LoyaltyProfile())
  ];
}
