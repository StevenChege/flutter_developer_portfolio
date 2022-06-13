import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/constants.dart';

class ExperienceCountCard extends StatelessWidget {
  const ExperienceCountCard({
    Key? key,
    required this.expNum,
  }) : super(key: key);

  final String expNum;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 255,
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Color(0xFFEDD2FC),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 3),
                blurRadius: 6,
                color: Color(0xFFA600FF).withOpacity(.25),
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  expNum,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 100,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Color(0xFFDFA3FF).withOpacity(.5),
                    shadows: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 10,
                        color: Color(0xFFA600FF).withOpacity(.5),
                      ),
                    ],
                  ),
                ),
                Text(
                  expNum,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 100,
                    color: whitebackgroundColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: kDefaultPadding * .5,
            ),
            Text(
              'Years of Experience',
              style: TextStyle(
                color: Color(0xFFA600FF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
