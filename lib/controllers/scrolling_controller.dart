import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import '../constants/constants.dart';

class ScrollingController extends GetxController {
  static ScrollingController scrollCtrl = Get.find<ScrollingController>();

  ScrollController scrollingController = ScrollController();

  bool isScrollingDown = true;
  double offset = 0.0;

  @override
  void onInit() {
    super.onInit();

    scrollingController = ScrollController();
    scrollingController.addListener(() {
      if (scrollingController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          update();
        }
      }

      if (scrollingController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          update();
        }
      }
    });
  }

  @override
  void onClose() {
    scrollingController.removeListener(() {});
    scrollingController.dispose();
    super.onClose();
  }

  dynamic scrollTo(BuildContext context, int i) =>
      scrollingController.animateTo(
          i == 0
              ? 0.0
              : i == 1
                  ? MediaQuery.of(context).size.height * .9
                  : i == 2
                      ? MediaQuery.of(context).size.height * 1.61
                      : i == 3
                          ? MediaQuery.of(context).size.height * 2.9
                          : i == 4
                              ? MediaQuery.of(context).size.height * 4.3
                              : MediaQuery.of(context).size.height * 5.3, //
          duration: scrollAnimationDuration,
          curve: scrollAnimationCurve);

  dynamic scrollToSmallScreen(BuildContext context, int i) =>
      scrollingController.animateTo(
          i == 0
              ? 0.0 // home
              : i == 1
                  ? MediaQuery.of(context).size.height * .9 // about
                  : i == 2
                      ? MediaQuery.of(context).size.height * 2.4 // services
                      : i == 3
                          ? MediaQuery.of(context).size.height *
                              3.4 // portfolio
                          : i == 4
                              ? MediaQuery.of(context).size.height *
                                  5.8 // testimonial
                              : MediaQuery.of(context).size.height *
                                  6.7, // contact
          duration: scrollAnimationDuration,
          curve: scrollAnimationCurve);

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
}
