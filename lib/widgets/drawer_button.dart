import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/constants.dart';

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
    final Size _ = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    final Color hoverColor = theme.brightness == Brightness.light
        ? kBottomBarColor.withOpacity(.7)
        : textColorDarkTheme.withOpacity(.7);

    return Padding(
      padding: const EdgeInsets.only(
        right: kDefaultPadding * .5,
        left: kDefaultPadding * .4,
      ),
      child: InkWell(
        onTap: widget.pressed,
        onHover: (v) {
          setState(() {
            isHover = v;
          });
        },
        radius: 50,
        hoverColor: primaryColor,
        splashColor: kPink,
        child: AnimatedContainer(
          duration: hoverAnimationDuration,
          constraints: BoxConstraints(maxWidth: 75),
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * .5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            border: Border.all(
              color: isHover ? hoverColor : trans,
              width: 1.2,
            ),
          ),
          child: Center(
            child: Text(
              widget.text,
              style: theme.textTheme.button!.copyWith(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                letterSpacing: .2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
