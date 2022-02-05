library module_loyalty;

import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:module_loyalty/pages/home/home_bindings.dart';
import 'package:module_loyalty/pages/home/home_controller.dart';
import 'package:module_route/app_base_page.dart';
import 'package:module_route/app_routes.dart';

// ignore: use_key_in_widget_constructors
class LoyaltyHome extends AppBasePage<HomeLoyaltyController> {
  @override
  final String routeName = AppPages.loyaltyhome;

  @override
  Bindings createBindings() => LoyaltyHomeBinding();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fidelidade Home"),
      ),
      body: Center(
        child: SizedBox(
          height: 64,
          width: 64,
          child: FloatingActionButton(
            onPressed: () => controller.handleGo(),
            child: Icon(Icons.loyalty),
          ),
        ),
      ),
    );
  }
}
