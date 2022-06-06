import 'package:dev_portfolio/controllers/theme_controller.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:dev_portfolio/routes/app_pages.dart';

import 'bindings/bindings.dart';

void main() async {
  WidgetsFlutterBinding?.ensureInitialized();
  await GetStorage?.init();
  runApp(
    GetMaterialApp(
      title: "Flutter Dev Portfolio",
      debugShowCheckedModeBanner: false,
      initialBinding: Binding(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      unknownRoute: AppPages.routes[1],
      themeMode: Get.put<ThemeController>(ThemeController()).themeMode,
      // theme: Themes.lightTheme,
      // darkTheme: Themes.darkTheme,
      // themeMode: ThemeMode.system,
      theme: FlexThemeData.light(scheme: FlexScheme.hippieBlue),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.hippieBlue),
    ),
  );
}

 //TODO: theming 
 //TODO: run android
 //TODO: codemagic android
 //TODO: git, screenshots