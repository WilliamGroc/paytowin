import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/pages.dart' as AppPages;

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: AppPages.Routes.INITIAL,
    defaultTransition: Transition.leftToRight,
    initialBinding: RootBinding(),
    getPages: AppPages.pages
  ));
}

class RootBinding implements Bindings {
  @override
  void dependencies() {}
}
