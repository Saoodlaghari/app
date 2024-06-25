import 'package:app/View/chats/audio_call.dart';
import 'package:app/View/chats/video_call.dart';
import 'package:app/utils/colors.dart';
import 'package:app/utils/icon_container_widget.dart';
import 'package:app/utils/images.dart';
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
                        color: AppColors.gray5E),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'online',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.gray5E),
                  )
                ],
              ),
            ],
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new_sharp)),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Audiocall()));
                },
                icon: const Icon(
                  Icons.call_outlined,
                  color: AppColors.customIconColor,
                  size: 30,
                )),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VideoCall()));
                  },
                  icon: const Icon(
                    Icons.video_call_outlined,
                    color: AppColors.customIconColor,
                    size: 30,
                  )),
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(Images.customBgImg))),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
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
                                  color: AppColors.grayAC,
                                  size: 30,
                                )),
                            hintStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                color: AppColors.grayA4),
                            contentPadding: const EdgeInsets.all(15))),
                  ),
                  const SizedBoxT(),
                  IconContainer(
                      height: 60,
                      width: 60,
                      iconSize: 40,
                      color: AppColors.primaryColor,
                      onTap: () {},
                      icon: const Icon(
                        Icons.send_outlined,
                        color: Colors.white,
                      ))
                ],
              ),
              const SizedBoxTwenty()
            ]),
          ),
        ));
  }
}
