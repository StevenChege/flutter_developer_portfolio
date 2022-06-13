import 'package:dev_portfolio/constants/constants.dart';
import 'package:dev_portfolio/models/service_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/scrolling_controller.dart';
import '../../widgets/responsive_widget.dart';
import '../../widgets/section_title.dart';
import '../../widgets/service_card.dart';

class ServiceSection extends GetView<ScrollingController> {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1000),
      child: Column(
        children: [
          SectionTitle(
            title: 'My Strong Arenas',
            subTitle: 'Service Offerings',
            color: Color(0xFFFF0000),
          ),
          ResponsiveWidget.isLargeScreen(context)
              ? Padding(
                  padding: EdgeInsets.only(
                    right: ResponsiveWidget.isLargeScreen(context)
                        ? kDefaultPadding * 5
                        : kDefaultPadding * 2,
                    left: ResponsiveWidget.isLargeScreen(context)
                        ? kDefaultPadding * 5
                        : kDefaultPadding * 2,
                    bottom: kDefaultPadding * 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      services.length,
                      (index) => ServiceCard(index: index),
                    ),
                  ),
                )
              : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      services.length,
                      (index) => ServiceCard(index: index),
                    ),
                  ),
                ),
          SizedBox(height: kDefaultPadding * 2),
        ],
      ),
    );
  }
}
