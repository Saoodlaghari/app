import 'package:app/utils/gallery.dart';
import 'package:app/utils/normal_txt.dart';
import 'package:app/utils/profile_row.dart';
import 'package:app/utils/sized_boxt.dart';
import 'package:app/utils/sized_boxtwenty.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> images = [
    'assets/images/g1.png',
    'assets/images/g2.png',
    'assets/images/g3.png',
    'assets/images/g4.png',
    'assets/images/g5.png',
    'assets/images/g6.png',
    'assets/images/g7.png',
    'assets/images/g5.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const NormalText(
          text: 'Profile',
          font: 16,
        ),
        leading: const Icon(
          CupertinoIcons.back,
          color: Color(0xffACACAC),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 5, right: 15),
            child: Icon(
              Icons.menu,
              color: Color(0xffFDB813),
            ),
          )
        ],
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/images/bg.png'))),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/images/man.png'),
                  ),
                ),
                const SizedBoxT(),
                const Center(
                  child: Text(
                    'Brian Immanual,24',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff5E5E5E),
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBoxTwenty(),
                Center(
                  child: Container(
                    height: 35,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Color(0xff934C93))),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_outline,
                          color: Color(0xff934C93),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '10 K',
                          style: TextStyle(color: Color(0xff934C93)),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        ProfileRow(
                            icon: Icon(Icons.shopping_bag_outlined,
                                color: Color(0xff934C93)),
                            text: 'Graphic Designer'),
                        SizedBox(
                          height: 15,
                        ),
                        ProfileRow(
                            icon: Icon(Icons.shopping_bag_outlined,
                                color: Color(0xff934C93)),
                            text: 'Graphic Designer'),
                      ],
                    ),
                    Column(
                      children: [
                        ProfileRow(
                            icon: Icon(
                              Icons.shopping_bag_outlined,
                              color: Color(0xff934C93),
                            ),
                            text: 'Graphic Designer'),
                        SizedBox(
                          height: 15,
                        ),
                        ProfileRow(
                          icon: Icon(
                            Icons.shopping_bag_outlined,
                            color: Color(0xff934C93),
                          ),
                          text: 'Graphic Designer',
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBoxTwenty(),
                const Text(
                  'About me',
                  style: TextStyle(fontSize: 14, color: Color(0xff5E5E5E)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'I\'m here when you need a sunny day,something good. We can sing together on the beach and burn bonfires at night with the moonlight. See you under the night sky !',
                  style: TextStyle(color: Color(0xffACACAC), fontSize: 12),
                ),
                const SizedBoxT(),
                Row(
                  children: [
                    const Text(
                      'Gallery',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff5E5E5E),
                          fontWeight: FontWeight.w700),
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: const Text('See All',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff934C93)))),
                    const Icon(
                      Icons.arrow_forward,
                      weight: 2,
                      color: Color(0xff934C93),
                    )
                  ],
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    crossAxisCount: 3,
                    children: List.generate(images.length,
                        (index) => Gallery(imageURL: images[index])),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
