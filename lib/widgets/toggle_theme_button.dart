import 'package:dev_portfolio/widgets/toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/colors.dart';
import '../../constants/image_paths.dart';
import '../../controllers/theme_controller.dart';

class ThemeToggleButton extends GetView<ThemeController> {
  const ThemeToggleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ToggleButton(
      iconSrc: lightModeImage,
      iconSrcb: darkModeImage,
      color: kBlue,
      press: () => controller.toggleTheme(),
    );
  }
}
