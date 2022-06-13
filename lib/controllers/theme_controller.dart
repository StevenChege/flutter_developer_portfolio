import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  static final themeCtrl = Get.find<ThemeController>();

  final _box = GetStorage();

  final _key = 'isDarkMode';

  ThemeMode get themeMode => _loadTheme() ? ThemeMode.dark : ThemeMode.light;

  bool _loadTheme() => _box.read(_key) ?? false;

  void saveTheme(bool isDarkMode) => _box.write(_key, isDarkMode);

  void changeTheme(ThemeData theme) => Get.changeTheme(theme);

  void changeThemeMode(ThemeMode themeMode) => Get.changeThemeMode(themeMode);

  void toggleTheme() {
    if (Get.isDarkMode) {
      changeThemeMode(ThemeMode.light);
      saveTheme(false);
    } else {
      changeThemeMode(ThemeMode.dark);
      saveTheme(true);
    }
    // print('themed changed');
    // Get.snackbar(
    //   'Theme',
    //   Get.isDarkMode ? 'Changed to Light-Mode' : 'Changed to Dark-Mode',
    //   maxWidth: 400,
    //   margin: EdgeInsets.only(top: kDefaultPadding),
    // );
  }
}
