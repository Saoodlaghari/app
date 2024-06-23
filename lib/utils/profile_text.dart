import 'package:flutter/material.dart';

class ProfileText extends StatelessWidget {
  const ProfileText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xffACACAC)),
      ),
    );
  }
}
