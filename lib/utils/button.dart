import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.width});
  final String? text;
  final VoidCallback onPressed;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: width,
        decoration: BoxDecoration(
            border: Border.all(width: 1.5),
            borderRadius: BorderRadius.circular(50),
            color: AppColors.primaryColor),
        child: Text(
          text.toString(),
          style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 22,
              color: AppColors.white),
        ),
      ),
    ));
  }
}
