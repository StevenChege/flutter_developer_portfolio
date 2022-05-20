import 'package:dev_portfolio/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

import '../constants/image_paths.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: ResponsiveWidget.isSmallScreen(context) ? 450 : 550,
        //maxWidth: 600,
      ),
      child: Image.asset(
        personaPic,
      ),
    );
  }
}
