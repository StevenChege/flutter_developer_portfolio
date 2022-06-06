import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/image_paths.dart';
import '../../constants/text_logs.dart';
import '../../constants/text_styles.dart';
import '../../controllers/scrolling_controller.dart';
import '../../widgets/aboutsection_text.dart';
import '../../widgets/an_outlined_button.dart';
import '../../widgets/experience_count_card.dart';
import '../../widgets/nice_button.dart';
import '../../constants/constants.dart';
import '../../widgets/responsive_widget.dart';
import '../../widgets/toggle_theme_button.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  static var scrollcontroller = Get.find<ScrollingController>();

  @override
  Widget build(BuildContext context) {
    Size _ = MediaQuery.of(context).size;

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
                        Text('About \nmy story', style: aboutMyStoryTextStyle),
                        SizedBox(height: 25),
                        Image.asset(signaturePic, width: 200),
                      ],
                    ),
                    Expanded(
                        child: AboutSectionText(
                            text: aboutMeTexta)), //TODO: about text
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
                          Text('About \nmy story',
                              style: aboutMyStoryTextStyle),
                          SizedBox(height: 25),
                          Image.asset(signaturePic, width: 200),
                        ],
                      ),
                      SizedBox(height: kDefaultPadding),
                      Expanded(
                        child: AboutSectionText(text: aboutMeTexta),
                      ),
                      ExperienceCountCard(expNum: '08'),
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
                      press: () {}, //TODO: hireme button
                    ),
                    SizedBox(
                      width: kDefaultPadding * 1 * 5,
                    ),
                    NiceButton(
                      width: 200,
                      text: 'Download \n   my CV',
                      imageSrc: iconDownloadPic,
                      press: () {}, //TODO: CV url
                    ),
                    SizedBox(
                      width: kDefaultPadding * 1 * 5,
                    ),
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: ThemeToggleButton(),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnOutlinedButton(
                        width: 200,
                        text: 'Hire Me',
                        imageSrc: iconHandPic,
                        press: () => Obx(scrollcontroller.scrollTo(context, 9))
                        // Get.to(AnotherView()),
                        ),
                    SizedBox(width: kDefaultPadding * .5),
                    NiceButton(
                      width: 200,
                      text: 'Download \n   my CV',
                      imageSrc: iconDownloadPic,
                      press: () => Obx(scrollcontroller.goToBottom()),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
