import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

class ProfileRow extends StatelessWidget {
  const ProfileRow({super.key, required this.icon, required this.text});
  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const SizedBox(
          width: 8,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 12, color: AppColors.grayAC),
        )
      ],
    );
  }
}
