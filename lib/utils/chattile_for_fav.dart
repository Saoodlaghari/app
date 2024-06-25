import 'package:flutter/material.dart';

class FavChatTile extends StatelessWidget {
  const FavChatTile(
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
      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 0),
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
          leading: CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(imageURL),
          ),
          trailing: Container(
            height: 40,
            width: 40,
            decoration:
                BoxDecoration(color: Color(0xff934C93), shape: BoxShape.circle),
            child: Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 25,
            ),
          )),
    );
  }
}
