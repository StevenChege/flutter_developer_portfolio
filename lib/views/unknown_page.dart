import 'package:dev_portfolio/constants/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/colors.dart';
import '../widgets/responsive_widget.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svg404ErrorImage,
            width: 350,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Page not found',
                style: TextStyle(
                  fontFamily: 'Helvetica Now Display',
                  fontWeight: FontWeight.w600,
                  fontSize: ResponsiveWidget.isSmallScreen(context) ? 55 : 62,
                  letterSpacing: -.6,
                  color: kWhite,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
