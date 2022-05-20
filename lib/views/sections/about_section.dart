import 'package:flutter/material.dart';
import '../../constants/image_paths.dart';
import '../../constants/text_logs.dart';
import '../../constants/text_styles.dart';
import '../../widgets/aboutsection_text.dart';
import '../../widgets/an_outlined_button.dart';
import '../../widgets/experience_count_card.dart';
import '../../widgets/nice_button.dart';
import '../../constants/constants.dart';
import '../../widgets/responsive_widget.dart';
import '../../widgets/toggle_theme_button.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _ = MediaQuery.of(context).size;

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
          ResponsiveWidget.isLargeScreen(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('About \nmy story', style: aboutMyStoryTextStyle),
                        SizedBox(height: 25),
                        Image.asset(signaturePic),
                      ],
                    ),
                    Expanded(child: AboutSectionText(text: k)),
                    ExperienceCountCard(expNum: '03'),
                    Expanded(child: AboutSectionText(text: k)),
                  ],
                )
              : Container(
                  height: _.height * 1.1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('About \nmy story',
                              style: aboutMyStoryTextStyle),
                          SizedBox(height: 25),
                          Image.asset(signaturePic),
                        ],
                      ),
                      SizedBox(height: kDefaultPadding),
                      Expanded(
                        child: AboutSectionText(text: k),
                      ),
                      SizedBox(height: kDefaultPadding * 1.5),
                      ExperienceCountCard(expNum: '08'),
                      SizedBox(height: kDefaultPadding * 1.5),
                      Expanded(
                        child: AboutSectionText(text: k),
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
                      text: 'Hire Me',
                      imageSrc: iconHandPic,
                      press: () {},
                    ),
                    SizedBox(
                      width: kDefaultPadding * 1 * 5,
                    ),
                    NiceButton(
                      text: 'Download CV',
                      imageSrc: iconDownloadPic,
                      press: () {},
                    ),
                    SizedBox(
                      width: kDefaultPadding * 1 * 5,
                    ),
                    ThemeToggleButton(),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnOutlinedButton(
                      text: 'Hire Me',
                      imageSrc: iconHandPic,
                      press: () {},
                    ),
                    SizedBox(width: kDefaultPadding * .5),
                    NiceButton(
                      text: 'Download \n   my CV',
                      imageSrc: iconDownloadPic,
                      press: () {},
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
