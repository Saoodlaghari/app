import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  const NormalText({super.key, required this.text, required this.font});
  final String? text;
  final double font;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      textAlign: TextAlign.center,
      text.toString(),
      style: TextStyle(
          fontSize: font,
          fontWeight: FontWeight.w400,
          color: Color(0xffA4A4A4)),
    ));
  }
}
