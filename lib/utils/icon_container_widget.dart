import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  const IconContainer(
      {super.key,
      required this.height,
      required this.width,
      required this.iconSize,
      required this.color,
      required this.onTap,
      required this.icon});
  final double height;
  final double width;
  final Color color;
  final Icon icon;
  final double iconSize;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: IconButton(
        onPressed: onTap,
        icon: icon,
        iconSize: iconSize,
      ),
    );
  }
}
