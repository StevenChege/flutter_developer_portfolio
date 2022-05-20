import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({
    Key? key,
    required this.iconSrc,
    required this.iconSrcb,
    required this.color,
    required this.press,
  }) : super(key: key);

  final String iconSrc, iconSrcb;
  final Color color;
  final VoidCallback press;

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool isHover = false;
  int _widgetId = 1;

  Widget _renderWidget1() => Image.asset(
        widget.iconSrc,
        height: 80,
        width: 80,
        key: Key('first'),
      );

  Widget _renderWidget2() => Image.asset(
        widget.iconSrcb,
        height: 80,
        width: 80,
        key: Key('second'),
      );

  Widget _renderaWidget() =>
      _widgetId == 1 ? _renderWidget1() : _renderWidget2();

  void _updateWidget() => setState(() {
        _widgetId = _widgetId == 1 ? 2 : 1;
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _updateWidget();
        widget.press;
      },
      onHover: (v) {
        setState(() {
          isHover = v;
        });
      },
      child: FittedBox(
        child: AnimatedSwitcher(
          duration: hoverAnimationDuration,
          reverseDuration: hoverAnimationDuration,
          switchInCurve: Curves.bounceInOut,
          switchOutCurve: Curves.easeOutCirc,
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding * .5,
              horizontal: kDefaultPadding * 1.5,
            ),
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [if (isHover) kDefaultCardShadow],
            ),
            child: _renderaWidget(),
          ),
        ),
      ),
    );
  }
}
