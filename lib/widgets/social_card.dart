import 'package:dev_portfolio/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/constants.dart';
import '../constants/text_styles.dart';

class SocialCard extends StatefulWidget {
  const SocialCard({
    Key? key,
    required this.iconSrc,
    required this.name,
    required this.color,
    required this.press,
  }) : super(key: key);

  final String iconSrc, name;
  final Color color;
  final VoidCallback press;

  @override
  State<SocialCard> createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return InkWell(
      onTap: widget.press,
      onHover: (v) {
        setState(() {
          isHover = v;
        });
      },
      child: FittedBox(
        child: AnimatedContainer(
          duration: hoverAnimationDuration,
          padding: EdgeInsets.symmetric(
            vertical: ResponsiveWidget.isSmallScreen(context)
                ? kDefaultPadding * .2
                : kDefaultPadding * .5,
            horizontal: ResponsiveWidget.isSmallScreen(context)
                ? kDefaultPadding * .4
                : kDefaultPadding * 1.5,
          ),
          decoration: BoxDecoration(
            color: widget.color,
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
            children: [
              Image.asset(
                widget.iconSrc,
                height: ResponsiveWidget.isSmallScreen(context) ? 40 : 80,
                width: ResponsiveWidget.isSmallScreen(context) ? 40 : 80,
              ),
              ResponsiveWidget.isLargeScreen(context)
                  ? SizedBox(width: kDefaultPadding)
                  : SizedBox(),
              ResponsiveWidget.isLargeScreen(context)
                  ? Text(widget.name, style: buttonTextStyle)
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
