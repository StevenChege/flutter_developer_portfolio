import 'package:dev_portfolio/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../constants/text_styles.dart';

class AboutSectionText extends StatelessWidget {
  const AboutSectionText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double padding = w * .005;

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: !ResponsiveWidget.isLargeScreen(context)
              ? kDefaultPadding * padding
              : 0),
      child: Text(text,
          textAlign: TextAlign.center, style: aboutSectiontextTextStyle),
    );
  }
}
