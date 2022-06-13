import 'package:dev_portfolio/constants/text_logs.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:url_launcher/url_launcher.dart';

import 'colors.dart';

const double kDefaultPadding = 20.0;

final Duration hoverAnimationDuration = Duration(milliseconds: 200);

final Duration toggleButtonAnimationDuration = Duration(milliseconds: 200);

final Duration magnetMouseAnimationDuration = Duration(milliseconds: 400);

final Duration drawerAnimationDuration = Duration(milliseconds: 500);

final Duration scrollAnimationDuration = Duration(seconds: 1);

final Duration snackbarDuration = Duration(seconds: 5);

final Duration carouselAnimDuration = Duration(milliseconds: 600);

const Curve slidingAnimationCurve = Curves.fastLinearToSlowEaseIn;

const Curve drawerAnimationCurve = Curves.easeInExpo;

const Curve cardAnimationCurve = Curves.easeOutCubic;

const Curve toggleButtonAnimationCurve = Curves.easeInOutBack;

const Curve buttonAnimationCurve = Curves.fastLinearToSlowEaseIn;

const Curve scrollAnimationCurve = Curves.easeInOut;

void launchURLs(String _url) async {
  final Uri _uri = Uri.parse(_url);

  await canLaunchUrl(_uri)
      ? await launchUrl(_uri)
      : throw 'Could not launch $_url';
}

void launchEmailUrl() async {
  final String query =
      'mailto:$email?subject=${(Uri.encodeComponent(emailSubject))}&body=${(Uri.encodeComponent(body))}';

  await canLaunchUrl(Uri.parse(query))
      ? await launchUrl(Uri.parse(query))
      : throw Get.snackbar(Uri.parse(query).toString(),
          '- 🤖🤖🤖🤖 --***--- Could not launch Email $query --  🤖🤖🤖🤖 --',
          duration: snackbarDuration);
}

final kDefaultShadow = BoxShadow(
  offset: Offset(0, 10),
  blurRadius: 50,
  color: Color(0xFF0700B1).withOpacity(.1),
);

final kDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(.1),
);

final kDefaultOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: kDarker,
    width: 1.5,
  ),
);
