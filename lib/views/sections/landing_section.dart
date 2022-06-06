import 'package:flutter/material.dart';

import '../../../../widgets/glass_content.dart';
import '../../../../widgets/logo.dart';
import '../../constants/constants.dart';
import '../../widgets/menu_bar.dart';
import '../../widgets/person_pic.dart';
import '../../widgets/responsive_widget.dart';

class LandingSect extends StatelessWidget {
  const LandingSect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _ = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: kDefaultPadding * 1.5),
      width: _.width * .9,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(
                      left: ResponsiveWidget.isSmallScreen(context)
                          ? kDefaultPadding * 3
                          : 1),
                  child: LoGo()),
              Spacer(),
              GlassContent(),
              Spacer(flex: 3),
            ],
          ),
          ResponsiveWidget.isSmallScreen(context)
              ? SizedBox()
              : Positioned(
                  bottom: 90,
                  right: -25,
                  child: PersonPic(
                      height:
                          ResponsiveWidget.isSmallScreen(context) ? 450 : 550),
                ),
          Positioned(
            bottom: 49,
            child: ResponsiveWidget.isSmallScreen(context)
                ? SizedBox()
                : MenuBar(),
          ),
        ],
      ),
    );
  }
}
