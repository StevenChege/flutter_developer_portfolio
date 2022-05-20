import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../constants/text_styles.dart';

class AnOutlinedButton extends StatelessWidget {
  const AnOutlinedButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlinedButton(
        onPressed: press,
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 2.5,
            vertical: kDefaultPadding,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(
              color: Color(0xFFEDEDED),
            ),
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image.asset(
              imageSrc,
              height: 40,
            ),
            SizedBox(
              width: kDefaultPadding,
            ),
            Text(text, style: buttonTextStyle),
          ],
        ),
      ),
    );
  }
}
