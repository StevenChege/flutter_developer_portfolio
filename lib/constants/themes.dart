import 'package:dev_portfolio/constants/constants.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class Themes {
  static final lightThemeData = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    textTheme: GoogleFonts.questrialTextTheme(ThemeData.light().textTheme),
    colorScheme: ThemeData.light()
        .colorScheme
        .copyWith(secondary: secondaryColorLightTheme),
    textButtonTheme: textButtonThemeData,
    outlinedButtonTheme: outlinedButtonThemeData,
    elevatedButtonTheme: elevatedButtonThemeData,
    inputDecorationTheme: kInputDecorationTheme,
  );

  static final darkThemeData = ThemeData(
    brightness: Brightness.dark,
    primaryColor: bgColorDarkTheme,
    scaffoldBackgroundColor: bgColorDarkTheme,
    textTheme: GoogleFonts.questrialTextTheme(ThemeData.dark().textTheme),
    colorScheme: ThemeData.dark()
        .colorScheme
        .copyWith(secondary: secondaryColorDarkTheme),
    textButtonTheme: textButtonThemeData,
    outlinedButtonTheme: outlinedButtonThemeData,
    elevatedButtonTheme: elevatedButtonThemeData,
    inputDecorationTheme: kInputDecorationTheme,
  );
}

final elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    primary: primaryColor,
    padding: EdgeInsets.all(kDefaultPadding * .8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(kDefaultPadding)),
    ),
    shadowColor: textColorLightTheme.withOpacity(.5),
  ),
);

final textButtonThemeData = TextButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) => (states.contains(MaterialState.hovered))
          ? Color(0xFFD9FFFC)
          : Color(0xFFE8F0F9),
    ),
    shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
      (Set<MaterialState> states) => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
    ),
    padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
      (Set<MaterialState> states) => EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 1.5,
        vertical: kDefaultPadding,
      ),
    ),
  ),
);

final outlinedButtonThemeData = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    backgroundColor: primaryColor,
    padding: EdgeInsets.symmetric(
      horizontal: kDefaultPadding * 1.5,
      vertical: kDefaultPadding * .8,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
      side: BorderSide(
        color: kTextColor,
      ),
    ),
  ),
);

final kInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPinkDirt, width: 1.5),
  ),
  floatingLabelStyle: TextStyle(color: kDarker),
  errorStyle: TextStyle(fontSize: 1),
  floatingLabelAlignment: FloatingLabelAlignment.center,
);
