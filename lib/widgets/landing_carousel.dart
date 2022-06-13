import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

import '../constants/image_paths.dart';
import '../controllers/carousel_controller.dart';

class LandingCarousel extends GetView<CarouseLController> {
  const LandingCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _ = MediaQuery.of(context).size;
    final List<String> landingImageList = [
      landingImage1,
      landingImage2,
      landingImage3
    ];

    return CarouselSlider(
      carouselController: controller.slideController,
      options: controller.slideOptions,
      items: List.generate(
        landingImageList.length,
        (index) => Image.asset(
          landingImageList[index],
          fit: BoxFit.cover,
          width: _.width,
        ),
      ),
    );
  }
}
