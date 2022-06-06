import 'package:dev_portfolio/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../constants/text_styles.dart';

class AnOutlinedButton extends StatelessWidget {
  const AnOutlinedButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    required this.width,
    required this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final double width;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size _ = MediaQuery.of(context).size;

    return Container(
      constraints: BoxConstraints(maxWidth: width),
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
              height: ResponsiveWidget.isSmallScreen(context) ? 33 : 38,
            ),
            SizedBox(width: kDefaultPadding * .5),
            Text(text, style: buttonTextStyle),
          ],
        ),
      ),
    );
  }
}
