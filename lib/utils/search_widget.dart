import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget(
      {super.key, required this.hintText, required this.controller});
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.white,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.grayAC,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.grayAC,
              ),
            ),
            hintText: hintText,
            prefixIcon: const Icon(
              Icons.search,
              color: AppColors.grayAC,
            ),
            hintStyle: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: AppColors.grayAC),
            contentPadding: const EdgeInsets.all(15)));
  }
}
