import 'package:flutter/material.dart';

import '../constants/image_paths.dart';
import '../constants/text_logs.dart';

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;

  Feedback(
    this.name,
    this.review,
    this.userPic,
    this.id,
    this.color,
  );
}

List<Feedback> feedBacks = [
  Feedback(
    'Richard Mash',
    k,
    feedBacksPic1,
    1,
    Color(0xFFFFF3DD),
  ),
  Feedback(
    'Richard Rich',
    k,
    feedBacksPic2,
    2,
    Color(0xFFD9FFFC),
  ),
  Feedback(
    'Richard Mash',
    k,
    feedBacksPic3,
    3,
    Color(0xFFFFE0E0),
  ),
];
