library module_route;

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:module_route/app_routes.dart';
import 'package:module_route/core_binding.dart';

class AppRoute extends StatelessWidget {
  const AppRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<NavigatorState> navigatorKey =
        new GlobalKey<NavigatorState>();

    return GetMaterialApp(
      title: "SUPERAPP",
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      locale: const Locale("pt", "BR"),
      initialRoute: AppPages.loyaltyhome,
      getPages: AppPages.pages,
      initialBinding: CoreBinding(),
    );
  }
}
