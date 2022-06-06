import 'package:dev_portfolio/constants/colors.dart';
import 'package:dev_portfolio/constants/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/constants.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({
    Key? key,
    required this.iconSrc,
    required this.iconSrcb,
    required this.press,
  }) : super(key: key);

  final String iconSrc, iconSrcb;
  final VoidCallback press;

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool isHover = false;
  int _widgetId = 1;

  Widget _renderWidget1() => Image.asset(
        widget.iconSrc,
        // height: 80,
        // width: 80,
        key: Key('1'),
      );

  Widget _renderWidget2() => Image.asset(
        widget.iconSrcb,
        // height: 80,
        // width: 80,
        key: Key('2'),
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
          duration: toggleButtonAnimationDuration,
          switchInCurve: toggleButtonAnimationCurve,
          transitionBuilder: (child, animation) => ScaleTransition(
            scale: animation,
            child: child,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding * .5,
              horizontal: kDefaultPadding * 1.5,
            ),
            decoration: BoxDecoration(
              color: trans,
              borderRadius: BorderRadius.circular(10),
            ),
            child: _renderaWidget(),
          ),
        ),
      ),
    );
  }
}

class ToggleController extends GetxController {
  bool isToggled = true;

  updateToggle() => isToggled = false;
}

class TogglerButton extends GetView<ToggleController> {
  const TogglerButton({Key? key, required this.press}) : super(key: key);

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        return GestureDetector(
          onTap: () {
            controller.updateToggle();
            press;
          },
          child: SizedBox(
            height: 80,
            width: 80,
            child: AnimatedSwitcher(
              duration: toggleButtonAnimationDuration,
              switchInCurve: toggleButtonAnimationCurve,
              transitionBuilder: (child, animation) =>
                  ScaleTransition(scale: animation, child: child),
              child: controller.isToggled
                  ? Image.asset(darkModeImage, key: ValueKey('1'))
                  : Image.asset(lightModeImage, key: ValueKey('2')),
            ),
          ),
        );
      },
    );
  }
}
