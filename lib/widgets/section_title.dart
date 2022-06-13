import 'package:dev_portfolio/constants/constants.dart';
import 'package:dev_portfolio/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.color,
  }) : super(key: key);

  final String title, subTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final Size _ = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);

    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      constraints: BoxConstraints(maxWidth: _.width * .9),
      height: 100,
      child: Padding(
        padding: EdgeInsets.only(
          right: ResponsiveWidget.isLargeScreen(context)
              ? kDefaultPadding * 5
              : kDefaultPadding * 2,
          left: ResponsiveWidget.isLargeScreen(context)
              ? kDefaultPadding * 5
              : kDefaultPadding,
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 75),
              margin: EdgeInsets.only(right: kDefaultPadding),
              width: 8,
              height: 100,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: theme.brightness == Brightness.light
                    ? kPitchDark
                    : bodyTextColorDarkTheme,
                borderRadius: BorderRadius.circular(4),
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: color,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  subTitle,
                  style: TextStyle(
                    fontFamily: 'Helvetica Now Display',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    letterSpacing: 1,
                    color: theme.brightness == Brightness.light
                        ? kTextColor
                        : kTextColor,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Helvetica Now Display',
                    fontWeight: FontWeight.w800,
                    fontSize: ResponsiveWidget.isLargeScreen(context) ? 50 : 35,
                    letterSpacing: -.7,
                    color: theme.brightness == Brightness.light
                        ? kPitchDark
                        : bodyTextColorDarkTheme,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
