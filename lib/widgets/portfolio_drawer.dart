import 'dart:math';

import 'package:dev_portfolio/widgets/drawer_button.dart';
import 'package:dev_portfolio/widgets/responsive_widget.dart';
import 'package:dev_portfolio/widgets/small_social_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/constants.dart';
import '../constants/image_paths.dart';
import '../constants/text_logs.dart';
import '../controllers/scrolling_controller.dart';
import '../controllers/theme_controller.dart';

class PortfolioDrawer extends StatefulWidget {
  const PortfolioDrawer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  State<PortfolioDrawer> createState() => _PortfolioDrawerState();
}

class _PortfolioDrawerState extends State<PortfolioDrawer> {
  double value = 0;
  static var scrollcontroller = Get.find<ScrollingController>();
  static var themeController = Get.find<ThemeController>();

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

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: _.width * .9,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: theme.brightness == Brightness.light
                    ? [primaryColor, kPink]
                    : [bgColorDarkTheme, textColorLightTheme],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
          SafeArea(
            child: Container(
              width: _.width * .45,
              padding: EdgeInsets.all(kDefaultPadding * 1.2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: SmallSocialCard(
                            iconSrc: theme.brightness == Brightness.light
                                ? darkModeImage
                                : lightModeImage,
                            color: theme.brightness == Brightness.light
                                ? bgColorDarkTheme
                                : kPink,
                            size: 25,
                            press: () => themeController.toggleTheme(),
                          ),
                        ),
                        SizedBox(height: kDefaultPadding),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPadding * 1.5),
                          child: Container(
                            height: 100,
                            width: 100,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kPinkDirt.withOpacity(.2),
                              border: Border.all(
                                color: primaryColor,
                                width: 4,
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
                              image: DecorationImage(
                                  image: AssetImage(personaPic)),
                            ),
                          ),
                        ),
                        SizedBox(height: kDefaultPadding * .5),
                        Text(
                          'Steve Chege',
                          style: theme.textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            letterSpacing: 0,
                          ),
                        ),
                        SizedBox(height: kDefaultPadding),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: List.generate(
                        menuItems.length,
                        (i) => MouseRegion(
                          child: DrawerButton(
                            text: menuItems[i].toUpperCase(),
                            pressed: () => scrollcontroller.scrollToSmallScreen(
                                context, i),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SmallSocialCard(
                        iconSrc: iconPicTwitter,
                        color: Color(0xFFE4FFC7),
                        size: 25,
                        press: () => launchURLs(twitterLink),
                      ),
                      SizedBox(width: kDefaultPadding),
                      SmallSocialCard(
                        iconSrc: iconPicGithub,
                        color: Color(0xFFE8F0F9),
                        size: 25,
                        press: () => launchURLs(githubLink),
                      ),
                      SizedBox(width: kDefaultPadding),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ResponsiveWidget.isSmallScreen(context)
              ? TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0, end: value),
                  duration: drawerAnimationDuration,
                  curve: drawerAnimationCurve,
                  builder: (context, double v, __) {
                    return Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, .001)
                        ..setEntry(0, 3, 200 * v)
                        ..rotateY((pi / 6) * v),
                      child: GestureDetector(
                        onHorizontalDragUpdate: (e) {
                          if (e.delta.dx > 0) {
                            setState(() {
                              value = 1;
                            });
                          } else {
                            setState(() {
                              value = 0;
                            });
                          }
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: widget.child,
                        ),
                      ),
                    );
                  },
                )
              : widget.child,
        ],
      ),
    );
  }
}
