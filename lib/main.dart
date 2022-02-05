import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:module_route/module_route.dart';
import 'package:parking_module/app/route/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppRoute();
  }
}
