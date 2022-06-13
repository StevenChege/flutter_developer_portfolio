import 'package:dev_portfolio/constants/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:dev_portfolio/routes/app_pages.dart';
import 'bindings/bindings.dart';
import 'controllers/theme_controller.dart';

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
      theme: Themes.lightThemeData,
      darkTheme: Themes.darkThemeData,
    ),
  );
}
// dark mode button, whatsapp link, hiremeButton 