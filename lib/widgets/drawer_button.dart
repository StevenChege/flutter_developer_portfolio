import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/constants.dart';
import '../constants/text_styles.dart';

class DrawerButton extends StatefulWidget {
  DrawerButton({
    Key? key,
    required this.text,
    required this.pressed,
  }) : super(key: key);

  final String text;
  final VoidCallback pressed;

  @override
  State<DrawerButton> createState() => _DrawerButtonState();
}

class _DrawerButtonState extends State<DrawerButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    Size _ = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(right: kDefaultPadding * .5),
      child: InkWell(
        onTap: widget.pressed,
        onHover: (v) {
          setState(() {
            isHover = v;
          });
        },
        radius: 50,
        hoverColor: kBlue,
        splashColor: kPink,
        child: AnimatedContainer(
          duration: hoverAnimationDuration,
          constraints: BoxConstraints(maxWidth: 75),
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * .5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            border: Border.all(
              color: isHover ? kBottomBarColor.withOpacity(.7) : trans,
              width: 1.2,
            ),
          ),
          child: Center(
            child: Text(widget.text, style: drawertextTextStyle),
          ),
        ),
      ),
    );
  }
}
