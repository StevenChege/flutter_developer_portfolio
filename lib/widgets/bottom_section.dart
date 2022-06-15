import 'package:dev_portfolio/widgets/clipper_page.dart';
import 'package:dev_portfolio/widgets/small_social_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/constants.dart';
import '../constants/image_paths.dart';
import '../constants/text_logs.dart';
import '../controllers/scrolling_controller.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({Key? key}) : super(key: key);

  static var scrollcontroller = Get.find<ScrollingController>();

  @override
  Widget build(BuildContext context) {
    final Size _ = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);

    return Container(
      height: 250,
      width: _.width,
      color:
          theme.brightness == Brightness.light ? kBottomBarColor : kPitchDark,
      padding: EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: Transform.translate(
        offset: Offset(0, -5),
        child: Stack(
          children: [
            ClipShadowPath(
              shadow: kDefaultShadow,
              clipper: BigClipper(),
              child: Container(
                color: primaryColor,
              ),
            ),
            ClipShadowPath(
              shadow: kDefaultShadow,
              clipper: SmallClipper(),
              child: Container(
                decoration: BoxDecoration(color: theme.scaffoldBackgroundColor),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Developed in $lovemoji with ",
                    style: theme.textTheme.bodySmall!
                        .copyWith(color: whitebackgroundColor),
                  ),
                  InkWell(
                    onTap: () => launchURLs(gitHubRepoLink),
                    child: Image.asset(flutter, height: 16),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: kDefaultPadding * 2,
              right: kDefaultPadding * 2,
              child: SmallSocialCard(
                iconSrc: toTopIconImage,
                color: Color.fromARGB(255, 218, 252, 250),
                size: 25,
                press: () => Obx(scrollcontroller.goToTop()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
