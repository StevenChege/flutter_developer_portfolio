import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/constants.dart';
import '../../constants/image_paths.dart';
import '../../widgets/contact_box.dart';
import '../../widgets/responsive_widget.dart';
import '../../widgets/section_title.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 1000,
          decoration: BoxDecoration(
            color: theme.brightness == Brightness.light
                ? whitebackgroundColor
                : bgColorDarkTheme,
            image: DecorationImage(
              image: AssetImage(contactsectionBackgroundImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: kDefaultPadding * 2.5),
              SectionTitle(
                title: 'Contact Me',
                subTitle: 'For Project inquiry and information',
                color: Color(0xFF07E24A),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ResponsiveWidget.isLargeScreen(context)
                        ? 0
                        : kDefaultPadding),
                child: ContactBox(),
              ),
              SizedBox(height: kDefaultPadding * 5),
            ],
          ),
        ),
      ],
    );
  }
}
