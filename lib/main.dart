import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/core/theme/colors.dart';
import 'app/routes/pages.dart' as AppPages;

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.Routes.INITIAL,
        defaultTransition: Transition.leftToRight,
        initialBinding: RootBinding(),
        theme: ThemeData(
            primaryColor: AppColors.primary,
            secondaryHeaderColor: AppColors.secondary,
            backgroundColor: AppColors.background,
            appBarTheme: const AppBarTheme(backgroundColor: AppColors.primary),
            elevatedButtonTheme: const ElevatedButtonThemeData(style: ButtonStyle())),
        getPages: AppPages.pages);
  }
}

class RootBinding implements Bindings {
  @override
  void dependencies() {}
}
