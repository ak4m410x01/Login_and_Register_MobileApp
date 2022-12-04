import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  String label;
  double fontSize;
  EdgeInsets padding;
  EdgeInsets contentPadding;

  TextInput({
    super.key,
    required this.label,
    this.fontSize = 20,
    this.padding = const EdgeInsets.only(
      bottom: 30,
      top: 35,
    ),
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 5,
      vertical: 10,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: contentPadding,
          label: Text(
            label,
            style: TextStyle(
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
