import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

class ProfileTextField extends StatelessWidget {
  const ProfileTextField(
      {super.key, required this.text, this.icon, required this.controller});
  final String? text;
  final icon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.grayAC,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.primaryColor,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          hintText: text,
          suffixIcon: icon,
          hintStyle: const TextStyle(fontSize: 16, color: AppColors.grayA4),
          contentPadding: const EdgeInsets.all(15)),
    );
  }
}
