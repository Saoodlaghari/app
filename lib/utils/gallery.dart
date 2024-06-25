import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key, required this.imageURL});
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imageURL)),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
