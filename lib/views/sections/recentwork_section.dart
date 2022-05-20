import 'package:dev_portfolio/constants/constants.dart';
import 'package:dev_portfolio/widgets/section_title.dart';
import 'package:flutter/material.dart';

import '../../models/recentwork_model.dart';
import '../../widgets/hireme_card.dart';
import '../../widgets/recentwork_card.dart';
import '../../widgets/responsive_widget.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF),
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/recent_work_bg.png')),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: Offset(0, -80),
            child: HireMeCard(),
          ),
          SectionTitle(
            title: 'Recent Works',
            subTitle: 'My Strong Arenas',
            color: Color(0xFFFFB100),
          ),
          SizedBox(height: kDefaultPadding * 1.5),
          SizedBox(
            width: 1110,
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: kDefaultPadding,
              runSpacing: ResponsiveWidget.isLargeScreen(context)
                  ? kDefaultPadding * 2
                  : kDefaultPadding,
              children: List.generate(
                recentWorks.length,
                (index) => Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: ResponsiveWidget.isLargeScreen(context)
                          ? 0
                          : kDefaultPadding),
                  child: RecentWorkCard(
                    index: index,
                    press: () {},
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 3),
        ],
      ),
    );
  }
}
