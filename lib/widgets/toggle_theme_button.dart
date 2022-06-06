import 'package:dev_portfolio/widgets/toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/theme_controller.dart';

class ThemeToggleButton extends GetView<ThemeController> {
  const ThemeToggleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TogglerButton(
      press: () => controller.toggleTheme(),
    );
  }
}
