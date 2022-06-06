import 'package:flutter/material.dart';

import '../constants/image_paths.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({Key? key, required this.height}) : super(key: key);

  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: height),
      child: Image.asset(personaPic),
    );
  }
}
