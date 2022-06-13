import 'package:flutter/material.dart';

import 'package:dev_portfolio/widgets/responsive_widget.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/constants.dart';
import '../controllers/scrolling_controller.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  State<MenuBar> createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  int selectedIndex = 0;
  int hoverIndex = 0;

  static var scrollcontroller = Get.find<ScrollingController>();

  List<String> menuItems = [
    'Home',
    'About',
    'Services',
    'Portfolio',
    'Testimonial',
    'Contact',
  ];

  @override
  Widget build(BuildContext context) {
    final Size _ = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: !ResponsiveWidget.isLargeScreen(context)
              ? kDefaultPadding * 1.5
              : kDefaultPadding * 2.5),
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 50,
            color: theme.brightness == Brightness.light
                ? kPitchDark.withOpacity(.1)
                : whitebackgroundColor.withOpacity(.1),
          ),
        ],
      ),
      constraints: BoxConstraints(maxWidth: _.width * .85),
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          menuItems.length,
          (i) => buildMenuItem(
              i,
              theme.textTheme.button!.copyWith(
                fontWeight: FontWeight.w300,
                fontSize: 12,
                letterSpacing: 1,
              )),
        ),
      ),
    );
  }

  Widget buildMenuItem(int i, TextStyle? style) => InkWell(
        onTap: () {
          setState(() {
            selectedIndex = i;
          });
          Obx(scrollcontroller.scrollTo(context, i));
        },
        onHover: (v) {
          setState(() {
            v ? hoverIndex = i : hoverIndex = selectedIndex;
          });
        },
        child: Container(
          constraints: BoxConstraints(minWidth: 75),
          height: 100,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(menuItems[i].toUpperCase(), style: style),
              AnimatedPositioned(
                duration: Duration(microseconds: 200),
                left: 0,
                right: 0,
                bottom: selectedIndex != i && hoverIndex == i ? -20 : -32,
                child: Image.asset(
                  'assets/images/Hover.png',
                ),
              ),
              AnimatedPositioned(
                duration: Duration(microseconds: 200),
                left: 0,
                right: 0,
                bottom: selectedIndex == i ? -2 : -32,
                child: Image.asset(
                  'assets/images/Hover.png',
                ),
              ),
            ],
          ),
        ),
      );
}
