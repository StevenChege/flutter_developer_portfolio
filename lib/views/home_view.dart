import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auto_animated/auto_animated.dart';

import 'package:dev_portfolio/views/sections/about_section.dart';
import 'package:dev_portfolio/views/sections/contact_section.dart';
import 'package:dev_portfolio/views/sections/feedback_section.dart';
import 'package:dev_portfolio/views/sections/landing_section.dart';
import 'package:dev_portfolio/views/sections/recentwork_section.dart';
import 'package:dev_portfolio/views/sections/service_section.dart';
import 'package:dev_portfolio/widgets/landing_carousel.dart';

import '../constants/colors.dart';
import '../constants/constants.dart';
import '../controllers/scrolling_controller.dart';
import '../widgets/bottom_section.dart';
import '../widgets/mouse_magnet.dart';

class HomeView extends GetView<ScrollingController> {
  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;

    return SizedBox(
      height: s.height,
      width: double.infinity,
      child: Scaffold(
        backgroundColor: kWhite,
        body: MouseMagnet(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                expandedHeight: 650,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      Column(
                        children: [
                          LandingCarousel(),
                          Container(
                            color: kWhite,
                            width: double.infinity,
                            height: 50,
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: LandingSect(),
                      ),
                    ],
                  ),
                  titlePadding: const EdgeInsets.symmetric(
                    horizontal: 44,
                    vertical: 33,
                  ),
                ),
                titleSpacing: 0.0,
                elevation: 7,
                leadingWidth: 0.0,
              ),
              LiveSliverList(
                controller: controller.scrollingController,
                itemCount: _sections.length,
                visibleFraction: 0.05,
                itemBuilder: (context, i, animation) {
                  return FadeTransition(
                    opacity: CurvedAnimation(
                      parent: animation,
                      curve: Curves.ease,
                    ),
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0, .3),
                        end: Offset.zero,
                      ).animate(animation),
                      child: _sections[i],
                    ),
                  );
                },
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (builder, x) => _sectsBottom[x],
                  childCount: _sectsBottom.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final List<Widget> _sections = [
    SizedBox(height: kDefaultPadding * 2),
    AboutSection(),
    ServiceSection(),
    RecentWorkSection(),
    FeedBackSection(),
  ];

  final List<Widget> _sectsBottom = [
    SizedBox(height: kDefaultPadding),
    ContactSection(),
    BottomSection(),
  ];
}
