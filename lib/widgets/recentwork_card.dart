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

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (v) {
        setState(() {
          isHover = v;
        });
      },
      child: AnimatedContainer(
        duration: hoverAnimationDuration,
        height: 300,
        width: 540,
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
              width: 250,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
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
                            ResponsiveWidget.isSmallScreen(context) ? 27 : 32,
                        letterSpacing: -.3,
                        color: kTextGrayColor,
                      ),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text('View Details', style: recentworkcardText3TextStyle),
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
