import 'package:get/get.dart';

import '../controllers/carousel_controller.dart';
import '../controllers/scrolling_controller.dart';
import '../controllers/text_field_controller.dart';
import '../controllers/theme_controller.dart';
import '../widgets/toggle_button.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScrollingController>(() => ScrollingController());

    Get.put(ThemeController());

    Get.lazyPut<CarouseLController>(() => CarouseLController());

    Get.lazyPut<TextFieldController>(() => TextFieldController());

    Get.lazyPut<ToggleController>(() => ToggleController());
  }
}
