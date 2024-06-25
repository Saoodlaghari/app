import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imageURL});
  final String title;
  final String subtitle;
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10),
      decoration: const BoxDecoration(color: Colors.white),
      child: ListTile(
        title: Text(title,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff5E5E5E))),
        subtitle: Text(subtitle,
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff999999))),
        leading: Image(
          image: AssetImage(imageURL),
        ),
        trailing: const Text('08:33',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff999999))),
      ),
    );
  }
}
