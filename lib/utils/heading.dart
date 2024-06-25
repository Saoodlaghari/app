import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: const TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.w500,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
