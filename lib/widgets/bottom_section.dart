import 'package:dev_portfolio/widgets/clipper_page.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/constants.dart';
import '../constants/image_paths.dart';
import '../constants/text_styles.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _ = MediaQuery.of(context).size;
    String love = '\u{1F499}'; // U+1F499

    return Container(
      height: 250,
      width: _.width,
      color: kBottomBarColor,
      padding: EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: Transform.translate(
        offset: Offset(0, -5),
        child: Stack(
          children: [
            ClipShadowPath(
              shadow: kDefaultShadow,
              clipper: BigClipper(),
              child: Container(
                color: kBlue,
              ),
            ),
            ClipShadowPath(
              shadow: kDefaultShadow,
              clipper: SmallClipper(),
              child: Container(
                decoration: BoxDecoration(color: kWhite),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Developed in $love with ", style: bottomsectTextStyle),
                  InkWell(
                    onTap: () => launchURLs(
                        "https://github.com/stevenchege/flutter_dev_portfolio"),
                    child: Image.asset(flutter, height: 16),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
