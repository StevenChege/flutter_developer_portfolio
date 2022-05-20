import 'package:get/get.dart';

import '../controllers/carousel_controller.dart';
import '../controllers/scrolling_controller.dart';
import '../controllers/text_field_controller.dart';
import '../controllers/theme_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScrollingController>(() => ScrollingController());

    Get.lazyPut<ThemeController>(() => ThemeController());

    Get.lazyPut<CarouseLController>(() => CarouseLController());

    Get.lazyPut<TextFieldController>(() => TextFieldController());
  }
}
