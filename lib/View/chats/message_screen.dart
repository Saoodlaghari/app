import 'package:app/View/chats/audio_call.dart';
import 'package:app/View/chats/chat.dart';
import 'package:app/View/chats/video_call.dart';
import 'package:app/utils/icon_container_widget.dart';
import 'package:app/utils/sized_boxt.dart';
import 'package:app/utils/sized_boxtwenty.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          title: const Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/profile 1.png'),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Text(
                    'Lorem',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff5E5E5E)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'online',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff5E5E5E)),
                  )
                ],
              ),
            ],
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new_sharp)),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Audiocall()));
                },
                icon: const Icon(
                  Icons.call_outlined,
                  color: Color(0xffFDB813),
                  size: 30,
                )),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => VideoCall()));
                  },
                  icon: const Icon(
                    Icons.video_call_outlined,
                    color: Color(0xffFDB813),
                    size: 30,
                  )),
            ),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/bg.png'))),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            height: double.maxFinite,
            width: double.infinity,
            child: Column(children: [
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Write a message',
                            prefixIcon: const Icon(
                              Icons.emoji_emotions_outlined,
                              size: 30,
                              color: Color(0xffACACAC),
                            ),
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.camera_alt_outlined,
                                  color: Color(0xffACACAC),
                                  size: 30,
                                )),
                            hintStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                color: Color(0xffA4A4A4)),
                            contentPadding: const EdgeInsets.all(15))),
                  ),
                  SizedBoxT(),
                  IconContainer(
                      height: 60,
                      width: 60,
                      iconSize: 40,
                      color: Color(0xff934C93),
                      onTap: () {},
                      icon: const Icon(
                        Icons.send_outlined,
                        color: Colors.white,
                      ))
                ],
              ),
              SizedBoxTwenty()
            ]),
          ),
        ));
  }
}
// const ListTile(
              // title: Text('Lorem '),
              // subtitle: Text('online'),
              // leading: Image(image: AssetImage('assets/images/profile 1.png'))),