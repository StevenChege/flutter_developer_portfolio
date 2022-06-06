import 'package:dev_portfolio/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../constants/text_styles.dart';

class NiceButton extends StatelessWidget {
  const NiceButton({
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
      child: TextButton(
        onPressed: press,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) =>
                (states.contains(MaterialState.hovered))
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
              horizontal: kDefaultPadding * 2.5,
              vertical: kDefaultPadding,
            ),
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image.asset(
              imageSrc,
              height: ResponsiveWidget.isSmallScreen(context) ? 33 : 35,
            ),
            SizedBox(
              width: kDefaultPadding * .5,
            ),
            Text(text, style: buttonTextStyle),
          ],
        ),
      ),
    );
  }
}
