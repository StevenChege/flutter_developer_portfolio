import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/theme_controller.dart';
import '../constants/colors.dart';
import '../constants/image_paths.dart';

class ThemeToggleButton extends GetView<ThemeController> {
  const ThemeToggleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return ElevatedButton(
      onPressed: () => controller.toggleTheme(),
      child: theme.brightness == Brightness.light
          ? Image.asset(darkModeImage)
          : Image.asset(lightModeImage),
      style: theme.elevatedButtonTheme.style!.copyWith(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) => theme.brightness == Brightness.light
              ? bgColorDarkTheme
              : primaryColor,
        ),
        shadowColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) => theme.brightness == Brightness.light
              ? bgColorDarkTheme
              : textColorDarkTheme,
        ),
      ),
    );
  }
}
