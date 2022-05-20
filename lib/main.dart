import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:dev_portfolio/bindings/home_binding.dart';
import 'package:dev_portfolio/routes/app_pages.dart';
import 'package:dev_portfolio/themes.dart';
import 'controllers/theme_controller.dart';

void main() async {
  WidgetsFlutterBinding?.ensureInitialized();
  await GetStorage?.init();
  runApp(
    GetMaterialApp(
      title: "Flutter Dev Portfolio",
      debugShowCheckedModeBanner: false,
      initialBinding: HomeBinding(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      unknownRoute: AppPages.routes[1],
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: Get.put<ThemeController>(ThemeController()).themeMode,
    ),
  );
}
