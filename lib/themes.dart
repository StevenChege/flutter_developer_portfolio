import 'package:dev_portfolio/constants/constants.dart';
import 'package:flutter/material.dart';

import 'constants/colors.dart';

class Themes {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    inputDecorationTheme: kDefaultInputDecorationTheme,
    primaryColor: kBlue,
    backgroundColor: kWhite,
    scaffoldBackgroundColor: kWhite,
    textSelectionTheme: TextSelectionThemeData(cursorColor: kDarker),

    iconTheme: IconThemeData(color: kPink, opacity: .8),
    //? iconTheme: Theme.of(context).iconTheme   color: Theme.of(context).iconTheme.color
  );
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    inputDecorationTheme: kDefaultInputDecorationTheme,
    primaryColor: Colors.black45,
    textSelectionTheme: TextSelectionThemeData(cursorColor: kBlue),
    backgroundColor: kDarker,
    scaffoldBackgroundColor: kDarker,
    iconTheme: IconThemeData(color: kBlue, opacity: .8),
  );
}
