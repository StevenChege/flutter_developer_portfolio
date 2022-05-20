import 'package:dev_portfolio/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

import '../constants/colors.dart';
import '../constants/constants.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _ = MediaQuery.of(context).size;

    return GlassContainer(
      height: 375,
      width: _.width * .7,
      shadowStrength: 1,
      opacity: .001,
      border: Border.all(
        color: Colors.white.withOpacity(.5),
        width: .4,
      ),
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding * 2,
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
                letterSpacing: 4,
                color: kWhite,
              ),
            ),
            Text(
              'Steve \nChege',
              style: TextStyle(
                fontFamily: 'Helvetica Now Display',
                fontWeight: FontWeight.w800,
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 59 : 66,
                letterSpacing: -.6,
                color: kWhite,
              ),
            ),
            SizedBox(
                height: ResponsiveWidget.isSmallScreen(context)
                    ? kDefaultPadding
                    : 0),
            Text(
              'Creative Design Director',
              style: TextStyle(
                fontFamily: 'Helvetica Now Display',
                fontWeight: FontWeight.w500,
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 17 : 22,
                letterSpacing: 0,
                color: kWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
