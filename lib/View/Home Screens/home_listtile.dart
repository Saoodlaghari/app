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
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image(
                  image: AssetImage(
                    imageUrl,
                  ),
                )),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {
                // Handle like button pressed
              },
            ),
          ],
        ),
      ),
    );
  }
}
