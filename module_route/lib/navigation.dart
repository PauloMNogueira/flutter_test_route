import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AppNavigator {
  Future<T?>? to<T>(String route, {dynamic arguments}) {
    return Get.toNamed<T>(route, arguments: arguments);
  }

  Future<T?>? offTo<T>(String route, {dynamic arguments}) {
    return Get.offNamed<T>(route, arguments: arguments);
  }

  void backTo(String r) {
    Get.until((route) => route == r);
  }

  void back<T>(T? result, {bool closeOverlays = false}) {
    Get.back(
      result: result,
      closeOverlays: closeOverlays,
    );
  }

  static void exit() {
    SystemNavigator.pop();
    Get.back();
  }

  Future<dynamic> showSnackbar(
    String message, {
    String actionText = "OK",
    VoidCallback? action,
  }) async {
    await Future.delayed(10.milliseconds);
    await Get.showSnackbar(GetBar(
      message: message,
      duration: 5.seconds,
      isDismissible: true,
      animationDuration: 250.milliseconds,
      mainButton: TextButton(
        onPressed: () {
          Get.back();
          action?.call();
        },
        child: Text(
          actionText,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ));
  }

  Future<T?> showAppBottomSheet<T>(
    Widget widget, {
    bool isDismissible = true,
    Color backgroundColor = Colors.white,
  }) async {
    return Get.bottomSheet<T>(
      widget,
      isScrollControlled: true,
      isDismissible: isDismissible,
      enableDrag: isDismissible,
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
    );
  }

  void showLoader() {
    Get.dialog(
      Center(
        child: SizedBox(
          width: 32,
          height: 32,
          child: CircularProgressIndicator(),
        ),
      ),
      transitionDuration: 200.milliseconds,
      barrierDismissible: false,
    );
  }

  void showCustomDialog(Widget widget) => Get.dialog(widget);

  void hideLoader() => Get.back();
}
