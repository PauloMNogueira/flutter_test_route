library module_superapp;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:module_route/app_base_page.dart';
import 'package:module_route/app_routes.dart';
import 'package:module_superapp/home_bindings.dart';
import 'package:module_superapp/home_controller.dart';
import 'package:module_superapp/pages/pageOne/one_page.dart';
import 'package:module_superapp/pages/pageTwo/two_page.dart';

class SuperAppHome extends AppBasePage<HomeSuperAppController> {
  @override
  final String routeName = AppPages.superapphome;

  @override
  Bindings createBindings() => SuperAppHomeBinding();

  @override
  Widget build(BuildContext context) {
    controller;
    final GlobalKey<NavigatorState> navigatorKey =
        new GlobalKey<NavigatorState>();

    return GetMaterialApp(
      navigatorKey: navigatorKey,
      title: '',
      initialBinding: SuperAppHomeBinding(),
      initialRoute: "/superapp/pageone",
      getPages: [
        GetPage(name: "/superapp/pageone", page: () => OnePage()),
        GetPage(name: "/superapp/pagetwo", page: () => TwoPage())
      ],
    );
  }
}
