import 'package:dev_portfolio/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';
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
  List<String> menuItems = [
    'Home',
    'About',
    'Services',
    //'Portfolio',
    //'Testimonial',
    'Contact',
  ];

  @override
  Widget build(BuildContext context) {
    Size _ = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: ResponsiveWidget.isSmallScreen(context)
              ? kDefaultPadding
              : kDefaultPadding * 2.5),
      decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          boxShadow: [kDefaultShadow]),
      constraints: BoxConstraints(maxWidth: _.width * .7),
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          menuItems.length,
          (index) => buildMenuItem(
            index,
            GetX<ScrollingController>(
              builder: (_) => _.scroll(context, index),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(int i, dynamic press) => InkWell(
        onTap: () {
          setState(() {
            selectedIndex = i;
          });
          press;
        },
        onHover: (v) {
          setState(() {
            v ? hoverIndex = i : hoverIndex = selectedIndex;
          });
        },
        child: Container(
          constraints: BoxConstraints(
              minWidth: ResponsiveWidget.isSmallScreen(context) ? 75 : 122),
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
