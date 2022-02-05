library module_loyalty;

import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:module_loyalty/pages/profile/profile_bindings.dart';
import 'package:module_loyalty/pages/profile/profile_controller.dart';
import 'package:module_route/app_base_page.dart';
import 'package:module_route/app_routes.dart';

// ignore: use_key_in_widget_constructors
class LoyaltyProfile extends AppBasePage<ProfileLoyaltyController> {
  @override
  final String routeName = AppPages.loyaltyprofile;

  @override
  Bindings createBindings() => LoyaltyProfileBinding();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FIDELIDADE PROFILE"),
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
