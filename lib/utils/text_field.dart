import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyTextFiled extends StatelessWidget {
  const MyTextFiled(
      {super.key,
      required this.hintText,
      this.icon,
      required this.controller,
      required this.keyBoardType,
      required this.obsecure,
      this.validator});
  final String hintText;
  final Icon? icon;
  final TextEditingController controller;
  final TextInputType keyBoardType;
  final bool obsecure;
  final FormFieldValidator<String>? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: validator,
        keyboardType: keyBoardType,
        obscureText: obsecure,
        controller: controller,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.primaryColor,
              ),
              borderRadius: BorderRadius.circular(32),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xff934C93),
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            hintText: hintText,
            suffixIcon: icon,
            hintStyle: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: AppColors.grayA4),
            contentPadding: const EdgeInsets.all(15)));
  }
}
