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
              color: Color(0xffACACAC),
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xff934C93),
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          hintText: text,
          suffixIcon: icon,
          hintStyle: const TextStyle(fontSize: 16, color: Color(0xffA4A4A4)),
          contentPadding: const EdgeInsets.all(15)),
    );
  }
}
