import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/image_paths.dart';
import '../../constants/text_logs.dart';
import '../../controllers/scrolling_controller.dart';
import '../../widgets/aboutsection_text.dart';
import '../../widgets/an_outlined_button.dart';
import '../../widgets/experience_count_card.dart';
import '../../widgets/a_text_button.dart';
import '../../constants/constants.dart';
import '../../widgets/responsive_widget.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  static var scrollcontroller = Get.find<ScrollingController>();

  @override
  Widget build(BuildContext context) {
    final Size _ = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);

    return Container(
      clipBehavior: Clip.none,
      constraints: BoxConstraints(
        maxWidth: _.width * .8,
      ),
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      padding: EdgeInsets.symmetric(
          horizontal: ResponsiveWidget.isLargeScreen(context)
              ? kDefaultPadding * 10
              : kDefaultPadding * 1.5),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2),
          ResponsiveWidget.isLargeScreen(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(' About \nmy story',
                            style: theme.textTheme.headline2!
                                .copyWith(fontWeight: FontWeight.w900)),
                        SizedBox(height: 25),
                        Image.asset(
                            theme.brightness == Brightness.light
                                ? signaturePic
                                : signaturePicWhite,
                            width: 200),
                      ],
                    ),
                    Expanded(child: AboutSectionText(text: aboutMeTexta)),
                    ExperienceCountCard(expNum: '03'),
                    Expanded(child: AboutSectionText(text: aboutMeTextb)),
                  ],
                )
              : Container(
                  height: _.height * 1.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('  About \nmy story',
                              style: theme.textTheme.headline2!
                                  .copyWith(fontWeight: FontWeight.w900)),
                          SizedBox(height: 25),
                          Image.asset(
                              theme.brightness == Brightness.light
                                  ? signaturePic
                                  : signaturePicWhite,
                              width: 200),
                        ],
                      ),
                      SizedBox(height: kDefaultPadding),
                      Expanded(
                        child: AboutSectionText(text: aboutMeTexta),
                      ),
                      ExperienceCountCard(expNum: '03'),
                      SizedBox(height: kDefaultPadding * 1.8),
                      Expanded(
                        child: AboutSectionText(text: aboutMeTextb),
                      ),
                    ],
                  ),
                ),
          SizedBox(height: kDefaultPadding * 3),
          ResponsiveWidget.isLargeScreen(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnOutlinedButton(
                      width: 200,
                      text: 'Hire Me',
                      imageSrc: iconHandPic,
                      press: () => launchEmailUrl(),
                    ),
                    SizedBox(width: kDefaultPadding * 1 * 5),
                    ATextButton(
                      width: 200,
                      text: 'Download \n   my CV',
                      imageSrc: iconDownloadPic,
                      press: () {}, //TODO: CV url
                    ),
                    SizedBox(width: kDefaultPadding * 1 * 5),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnOutlinedButton(
                      width: 175,
                      text: 'Hire Me',
                      imageSrc: iconHandPic,
                      press: () => launchEmailUrl(),
                    ),
                    SizedBox(width: kDefaultPadding * .4),
                    ATextButton(
                      width: 175,
                      text: 'Download \n   my CV',
                      imageSrc: iconDownloadPic,
                      press: () {}, //TODO: CV url
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
