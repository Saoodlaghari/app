import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyTextFiled extends StatelessWidget {
  const MyTextFiled(
      {super.key, required this.hintText, this.icon, required this.controller});
  final String hintText;
  final Icon? icon;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xff934C93),
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
                color: Color(0xffA4A4A4)),
            contentPadding: const EdgeInsets.all(15)));
  }
}
