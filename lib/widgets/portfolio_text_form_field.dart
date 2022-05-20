import 'package:flutter/material.dart';

class PortfolioTextFormField extends StatelessWidget {
  const PortfolioTextFormField({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.validator,
  }) : super(key: key);

  final String labelText, hintText;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: TextFormField(
        validator: validator,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}
