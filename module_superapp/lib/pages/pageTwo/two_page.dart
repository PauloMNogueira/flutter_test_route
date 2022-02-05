import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:module_route/app_base_page.dart';
import 'package:module_superapp/home_bindings.dart';
import 'package:module_superapp/pages/pageOne/one_controller.dart';
import 'package:module_superapp/pages/pageTwo/two_binding.dart';
import 'package:module_superapp/pages/pageTwo/two_controller.dart';

class TwoPage extends AppBasePage<TwoController> {
  @override
  final String routeName = "/superapp/pagetwo";

  @override
  Bindings createBindings() => TwoBinding();

  @override
  Widget build(BuildContext context) {
    controller;
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Two - SuperApp Module"),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () => controller.handleGo(),
        ),
      ),
    );
  }
}
