import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  const Tag({super.key, required this.text, required this.width});
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 30,
        width: width,
        decoration: BoxDecoration(
            border: Border.all(width: 1.5, color: Color(0xffB6B6B6)),
            borderRadius: BorderRadius.circular(50),
            color: AppColors.primaryColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              text,
              style: const TextStyle(color: AppColors.white),
            ),
            const Icon(
              Icons.cancel,
              color: AppColors.white,
            )
          ],
        ));
  }
}
