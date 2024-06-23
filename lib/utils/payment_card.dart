import 'package:flutter/material.dart';

class PaymentCard extends StatelessWidget {
  final bool isSelected;
  final String title;
  final String subtitle;
  final String price;
  final VoidCallback onTap;

  const PaymentCard({
    super.key,
    required this.isSelected,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 130,
        decoration: BoxDecoration(
            color: isSelected ? Color(0xff934C93) : Color(0xffF0F0F0),
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                  blurRadius: 2,
                  color: Color.fromARGB(255, 124, 117, 117),
                  offset: Offset(0.0, 4.0))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 24,
                        color: isSelected ? Colors.white : Color(0xff934C93)),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                        fontSize: 14,
                        color: isSelected ? Colors.white : Color(0xff5D5D5D)),
                  ),
                  Text(
                    price,
                    style:
                        const TextStyle(fontSize: 18, color: Color(0xffFDB813)),
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: const Color(0xffFDB813))),
                  child: isSelected
                      ? const Center(
                          child: Icon(
                            Icons.check,
                            size: 45,
                            color: Color(0xff934C93),
                          ),
                        )
                      : null,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
