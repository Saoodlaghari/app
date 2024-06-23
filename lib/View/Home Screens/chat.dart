import 'package:app/View/Home%20Screens/home_screen.dart';
import 'package:app/utils/normal_txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const NormalText(
          text: 'Chat',
          font: 16,
        ),
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Icon(
            CupertinoIcons.back,
            color: Color(0xffACACAC),
          ),
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
