import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final CrossAxisAlignment crossAxisAlignment;
  final String text;
  final String text2;
  const AppColumnTextLayout(
      {super.key,
      required this.text,
      required this.text2,
      this.crossAxisAlignment = CrossAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        TextStyleThird(
          text: text,
        ),
        const SizedBox(
          height: 3,
        ),
        TextStyleFourth(
          text: text2,
        ),
      ],
    );
  }
}
