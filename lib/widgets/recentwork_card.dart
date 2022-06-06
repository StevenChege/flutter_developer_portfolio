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
  double cardWidth = 550.0;
  double cardHight = 300.0;

  @override
  Widget build(BuildContext context) {
    Size _ = MediaQuery.of(context).size;

    return InkWell(
      onTap: widget.press,
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
          color: kWhite,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
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
                    Text(recentWorks[widget.index].category.toUpperCase(),
                        style: recentworkcardText1TextStyle),
                    SizedBox(height: kDefaultPadding * .5),
                    Text(
                      recentWorks[widget.index].title,
                      style: TextStyle(
                        fontFamily: 'Helvetica Now Display',
                        fontWeight: FontWeight.w400,
                        fontSize:
                            ResponsiveWidget.isSmallScreen(context) ? 25 : 33,
                        letterSpacing: -.3,
                        color: kTextGrayColor,
                      ),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text('View Details',
                        style:
                            recentworkcardText3TextStyle), //TODO: recent work details navigation
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
