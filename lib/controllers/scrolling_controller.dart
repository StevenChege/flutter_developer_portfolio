import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/constants.dart';

class ScrollingController extends GetxController {
  static ScrollingController scrollCtrl = Get.find<ScrollingController>();

  ScrollController scrollingController = ScrollController();

  @override
  void onInit() {
    scrollingController = ScrollController();
    super.onInit();
  }

  @override
  void onClose() {
    scrollingController.dispose();
    super.onClose();
  }

  scroll(BuildContext context, int i) {
    double height = MediaQuery.of(context).size.height;
    scrollingController.animateTo(
      i == 0
          ? 0.0
          : i == 1
              ? height * 1.05
              : i == 2
                  ? height * 1.98
                  : i == 3
                      ? height * 2.9
                      : height * 4,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
    print(i);
    return i;
  }

  goToTop() {
    scrollingController.animateTo(
      0.0,
      duration: magnetMouseAnimationDuration,
      curve: cardAnimationCurve,
    );
  }

  goToBottom() {
    scrollingController.animateTo(
      scrollingController.position.maxScrollExtent,
      duration: magnetMouseAnimationDuration,
      curve: cardAnimationCurve,
    );
  }

  goToSection() {
    scrollingController.animateTo(
      25.0,
      duration: magnetMouseAnimationDuration,
      curve: cardAnimationCurve,
    );
  }
}
