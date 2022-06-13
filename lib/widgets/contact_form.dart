import 'package:dev_portfolio/widgets/nice_button.dart';
import 'package:dev_portfolio/widgets/portfolio_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/constants.dart';
import '../constants/image_paths.dart';
import '../constants/text_logs.dart';
import '../controllers/text_field_controller.dart';

class ContactForm extends GetView<TextFieldController> {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          PortfolioTextFormField(
            labelText: 'Your Name',
            hintText: 'Enter your name',
            validator: (v) {
              if (v!.isEmpty) {
                return '';
              }
              return null;
            },
          ),
          PortfolioTextFormField(
            labelText: 'Email Address',
            hintText: 'Enter your email address',
            validator: (v) {
              if (v!.isEmpty || !RegExp(emailRegExp).hasMatch(v)) {
                return '';
              }
              return null;
            },
          ),
          PortfolioTextFormField(
            labelText: 'Project Type',
            hintText: 'Select project type',
            validator: (v) {
              if (v!.isEmpty) {
                return '';
              }
              return null;
            },
          ),
          PortfolioTextFormField(
            labelText: 'Project Budget',
            hintText: 'Select project budget',
            validator: (v) {
              if (v!.isEmpty) {
                return ' ';
              }
              return null;
            },
          ),
          SizedBox(
            child: TextFormField(
              maxLines: 7,
              minLines: 5,
              validator: (v) {
                if (v!.isEmpty) {
                  return ' ';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Description',
                hintText: 'Write some message',
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: NiceButton(
                width: 225,
                imageSrc: iconContactPic,
                text: 'Contact Me!',
                press: () {
                  controller.submitFormValues();
                  FocusScope.of(context).unfocus();
                  // TODO: upload form vals to firestore
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
