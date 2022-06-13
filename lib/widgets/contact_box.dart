import 'package:dev_portfolio/widgets/contact_form.dart';
import 'package:dev_portfolio/widgets/social_card.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/constants.dart';
import '../constants/image_paths.dart';
import '../constants/text_logs.dart';

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Container(
      height: 969,
      padding: EdgeInsets.all(kDefaultPadding * 3),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1000),
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 50,
            color: theme.brightness == Brightness.light
                ? kPitchDark.withOpacity(.1)
                : whitebackgroundColor.withOpacity(.05),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialCard(
                iconSrc: iconPicWhatsApp,
                name: 'Steve Chege',
                color: Color(0xFFD9FFFC),
                press: () => launchURLs(whatsAppLink),
              ),
              SocialCard(
                iconSrc: iconPicTwitter,
                name: 'Steve Chege',
                color: Color(0xFFE4FFC7),
                press: () => launchURLs(twitterLink),
              ),
              SocialCard(
                iconSrc: iconPicGithub,
                name: 'Steve Chege',
                color: Color(0xFFE8F0F9),
                press: () => launchURLs(githubLink),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 2),
          ContactForm(),
        ],
      ),
    );
  }
}
