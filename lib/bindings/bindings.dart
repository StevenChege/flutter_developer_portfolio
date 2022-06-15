import 'package:get/get.dart';

import '../controllers/carousel_controller.dart';
import '../controllers/scrolling_controller.dart';
import '../controllers/form_fields_controller.dart';
import '../controllers/theme_controller.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScrollingController>(() => ScrollingController());

    Get.put(ThemeController());

    Get.lazyPut<CarouseLController>(() => CarouseLController());

    Get.lazyPut<FormFieldsController>(() => FormFieldsController());
  }
}
