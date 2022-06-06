import 'package:flutter/material.dart';

import '../constants/constants.dart';

class SmallSocialCard extends StatefulWidget {
  SmallSocialCard({
    Key? key,
    required this.iconSrc,
    required this.size,
    required this.color,
    required this.press,
  }) : super(key: key);

  final String iconSrc;
  final double size;
  final Color color;
  final VoidCallback press;

  @override
  State<SmallSocialCard> createState() => _SmallSocialCardState();
}

class _SmallSocialCardState extends State<SmallSocialCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * .5),
      child: InkWell(
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
              vertical: kDefaultPadding * .3,
              horizontal: kDefaultPadding * .3,
            ),
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [if (isHover) kDefaultCardShadow],
            ),
            child: Image.asset(
              widget.iconSrc,
              height: widget.size,
              width: widget.size,
            ),
          ),
        ),
      ),
    );
  }
}
