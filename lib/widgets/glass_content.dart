import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dev_portfolio/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

import '../constants/colors.dart';
import '../constants/constants.dart';
import '../constants/text_logs.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _ = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);

    final TextStyle animatedTextTextStyle = TextStyle(
      fontFamily: 'Helvetica Now Display',
      fontWeight: FontWeight.w500,
      fontSize: 20,
      letterSpacing: 0,
      color: theme.brightness == Brightness.light
          ? whitebackgroundColor
          : kPitchDark,
    );

    return GlassContainer(
      height: 375,
      width: _.width * .85,
      shadowStrength: 1,
      opacity: .001,
      border: Border.all(
        color: whitebackgroundColor.withOpacity(.5),
        width: .4,
      ),
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ResponsiveWidget.isLargeScreen(context)
              ? kDefaultPadding * 6
              : kDefaultPadding * 3,
          vertical: kDefaultPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello There!',
              style: TextStyle(
                fontFamily: 'Helvetica Now Display',
                fontWeight: FontWeight.w400,
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 13 : 17,
                letterSpacing: 2,
                color: theme.brightness == Brightness.light
                    ? whitebackgroundColor
                    : kPitchDark,
              ),
            ),
            SizedBox(height: kDefaultPadding),
            Text(
              'Steve \nChege',
              style: TextStyle(
                fontFamily: 'Helvetica Now Display',
                fontWeight: FontWeight.w800,
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 55 : 66,
                letterSpacing: 1,
                color: theme.brightness == Brightness.light
                    ? whitebackgroundColor
                    : kPitchDark,
              ),
            ),
            SizedBox(height: kDefaultPadding),
            SizedBox(
              height: kDefaultPadding * 2.5,
              child: AnimatedTextKit(
                pause: Duration(seconds: 1),
                totalRepeatCount: 2,
                animatedTexts: List.generate(
                  titlesText.length,
                  (i) => TyperAnimatedText(
                    titlesText[i],
                    speed: Duration(milliseconds: 50),
                    textStyle: animatedTextTextStyle,
                    curve: Curves.linear,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
