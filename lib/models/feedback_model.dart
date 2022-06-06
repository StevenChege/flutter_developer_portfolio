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
  //TODO: feedbacks
  Feedback(
    'Richard Mash',
    feedbackText,
    feedBacksPic,
    1,
    Color(0xFFFFF3DD),
  ),
  Feedback(
    'Jennifer Rich',
    feedbackText,
    feedBacksPic,
    2,
    Color(0xFFD9FFFC),
  ),
  Feedback(
    'Andy Mwangi',
    feedbackText,
    feedBacksPic,
    3,
    Color(0xFFFFE0E0),
  ),
];
