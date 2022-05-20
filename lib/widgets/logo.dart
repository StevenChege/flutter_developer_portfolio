import 'package:flutter/material.dart';

import '../constants/colors.dart';

class LoGo extends StatelessWidget {
  const LoGo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '<SC>',
      style: TextStyle(
        fontFamily: 'Agustina',
        fontWeight: FontWeight.w500,
        color: kWhite,
        fontSize: 25,
        letterSpacing: 3,
        shadows: [
          Shadow(
            color: kTextColor,
            blurRadius: 5,
            offset: Offset(-5, -10),
          ),
        ],
      ),
    );
  }
}
