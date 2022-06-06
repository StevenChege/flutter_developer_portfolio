import 'package:dev_portfolio/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';

class TextFieldController extends GetxController {
  final formKey = GlobalKey<FormState>();

  submitFormValues() {
    bool passedValidation = formKey.currentState!.validate();

    if (passedValidation) {
      formKey.currentState!.save();
      Get.snackbar(
        'Submitted',
        'Thanks for your feedback, will get back shortly.',
        maxWidth: 450,
        duration: snackbarDuration,
        colorText: kDarker,
        margin: EdgeInsets.only(top: kDefaultPadding),
      );
      print('Text field says: ${formKey.currentState.toString()}');
    } else {
      Get.snackbar(
        'Oops',
        'Try again',
        maxWidth: 450,
        duration: snackbarDuration,
        colorText: kDarker,
        margin: EdgeInsets.only(top: kDefaultPadding),
      );
    }
  }

  //  uploadDatatoFirestore() => FirebaseFirestore.instance.collection('contact').add({
  //    'name': '$name',
  //    'email': '$email',
  //    'messae': '$message',
  //  });

}
