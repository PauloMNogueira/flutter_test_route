import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:module_route/app_base_page.dart';
import 'package:module_superapp/home_bindings.dart';
import 'package:module_superapp/pages/pageOne/one_controller.dart';

class OnePage extends AppBasePage<OneController> {
  @override
  final String routeName = "/superapp/pageone";

  @override
  Bindings createBindings() => SuperAppHomeBinding();

  @override
  Widget build(BuildContext context) {
    controller;
    return Scaffold(
      appBar: AppBar(
        title: Text("Page One - SuperApp Module"),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () => controller.handleGo(),
        ),
      ),
    );
  }
}
