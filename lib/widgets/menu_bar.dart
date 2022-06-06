import 'package:flutter/material.dart';

import 'package:dev_portfolio/widgets/responsive_widget.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/constants.dart';
import '../constants/text_styles.dart';
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
    Size _ = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: !ResponsiveWidget.isLargeScreen(context)
              ? kDefaultPadding * 1.5
              : kDefaultPadding * 2.5),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [kDefaultShadow],
      ),
      constraints: BoxConstraints(maxWidth: _.width * .85),
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          menuItems.length,
          (i) => buildMenuItem(i),
        ),
      ),
    );
  }

  Widget buildMenuItem(int i) => InkWell(
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
              Text(
                menuItems[i].toUpperCase(),
                style: menubarButtonTextStyle,
              ),
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
