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
            color: const Color(0xff934C93)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
            const Icon(
              Icons.cancel,
              color: Colors.white,
            )
          ],
        ));
  }
}
