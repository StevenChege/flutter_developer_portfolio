import 'package:dev_portfolio/constants/constants.dart';
import 'package:dev_portfolio/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

import '../../models/recentwork_model.dart';
import '../constants/colors.dart';
import '../constants/text_styles.dart';

class RecentWorkCard extends StatefulWidget {
  const RecentWorkCard({
    Key? key,
    required this.index,
    required this.press,
  }) : super(key: key);

  final int index;
  final VoidCallback press;

  @override
  State<RecentWorkCard> createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  double cardWidth = 500.0;
  double cardHight = 350.0;

  @override
  Widget build(BuildContext context) {
    final Size _ = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);

    return InkWell(
      onTap: widget
          .press, //TODO: recent work details navigation, with options dialogue
      onHover: (v) {
        setState(() {
          isHover = v;
        });
      },
      child: AnimatedContainer(
        duration: hoverAnimationDuration,
        height: cardHight,
        width: cardWidth,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: whitebackgroundColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (isHover)
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: theme.brightness == Brightness.light
                    ? kPitchDark.withOpacity(.1)
                    : whitebackgroundColor.withOpacity(.1),
              ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              recentWorks[widget.index].image,
              fit: BoxFit.cover,
              height: cardHight,
              width: ResponsiveWidget.isLargeScreen(context)
                  ? cardWidth * .5
                  : cardWidth * .4,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * .6,
                  vertical: kDefaultPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: kDefaultPadding),
                    Expanded(
                      child: Text(
                          recentWorks[widget.index].category.toUpperCase(),
                          style: recentworkcardText1TextStyle),
                    ),
                    SizedBox(height: kDefaultPadding * .5),
                    Text(
                      recentWorks[widget.index].title,
                      style: TextStyle(
                        fontFamily: 'Helvetica Now Display',
                        fontWeight: FontWeight.w400,
                        fontSize:
                            ResponsiveWidget.isSmallScreen(context) ? 25 : 33,
                        letterSpacing: -.3,
                        color: kTextColor,
                      ),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Expanded(
                      child: Text('View Details',
                          style: recentworkcardText3TextStyle),
                    ),
                    SizedBox(height: kDefaultPadding * .5),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
