import 'package:flutter/material.dart';

import '../constants/image_paths.dart';

class Service {
  final String title, image;
  final int id;
  final Color color;

  Service(
    this.title,
    this.image,
    this.id,
    this.color,
  );
}

List<Service> services = [
  Service(
    'Flutter Development',
    servicePic1,
    1,
    Color(0xFFD9FFFC),
  ),
  Service(
    'Web Design',
    servicePic2,
    2,
    Color(0xFFE4FFC7),
  ),
  Service(
    'UI-UX Design',
    servicePic3,
    3,
    Color(0xFFFFF3DD),
  ),
  Service(
    'Cloud Services',
    servicePic4,
    4,
    Color(0xFFFFE0E0),
  ),
];
