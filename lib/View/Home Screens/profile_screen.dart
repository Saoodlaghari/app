import 'package:app/utils/normal_txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
          Icon(
            CupertinoIcons.bell,
            color: Color(0xffFDB813),
          ),
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
            image: DecorationImage(image: AssetImage('assets/images/bg.png'))),
      ),
    );
  }
}
