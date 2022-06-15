import 'package:dev_portfolio/constants/constants.dart';
import 'package:dev_portfolio/models/feedback_model.dart';
import 'package:flutter/material.dart';

import '../../widgets/feedback_card.dart';
import '../../widgets/responsive_widget.dart';
import '../../widgets/section_title.dart';

class FeedBackSection extends StatelessWidget {
  const FeedBackSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _ = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: _.width * .9),
      child: Column(
        children: [
          SectionTitle(
            title: 'Feedback Recieved',
            subTitle: 'Client\'s testimonials that inspired me a lot',
            color: Color(0xFF00B1FF),
          ),
          SizedBox(height: kDefaultPadding),
          ResponsiveWidget.isLargeScreen(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    feedBacks.length,
                    (index) => FeedBackCard(index: index),
                  ),
                )
              : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ResponsiveWidget.isSmallScreen(context)
                          ? 0
                          : kDefaultPadding * 1.5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        feedBacks.length,
                        (index) => FeedBackCard(index: index),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
