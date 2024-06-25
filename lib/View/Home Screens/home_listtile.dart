import 'package:flutter/material.dart';

class HomeListTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const HomeListTile({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Image(image: AssetImage(imageUrl)),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.favorite),
      ),
    );
  }
}
