import 'package:dev_portfolio/constants/constants.dart';
import 'package:dev_portfolio/models/service_model.dart';
import 'package:dev_portfolio/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal:
              ResponsiveWidget.isLargeScreen(context) ? 0 : kDefaultPadding),
      child: InkWell(
        onTap: () {},
        onHover: (v) {
          setState(() {
            isHover = v;
          });
        },
        radius: 50,
        hoverColor: Colors.transparent,
        child: AnimatedContainer(
          duration: hoverAnimationDuration,
          width: 256,
          height: 226,
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
          decoration: BoxDecoration(
            color: services[widget.index].color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              if (isHover)
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: theme.brightness == Brightness.light
                      ? kPitchDark.withOpacity(.1)
                      : whitebackgroundColor.withOpacity(.1),
                ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: hoverAnimationDuration,
                width: 120,
                height: 120,
                padding: EdgeInsets.all(kDefaultPadding * 1.5),
                decoration: BoxDecoration(
                  color: theme.brightness == Brightness.light
                      ? whitebackgroundColor
                      : Color.fromARGB(255, 188, 198, 219),
                  shape: BoxShape.circle,
                  boxShadow: [
                    if (!isHover)
                      BoxShadow(
                        offset: Offset(0, 20),
                        blurRadius: 30,
                        color: Colors.black.withOpacity(.1),
                      )
                  ],
                ),
                child: Image.asset(
                  services[widget.index].image,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Text(
                services[widget.index].title,
                style: servicecardTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
