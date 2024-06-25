import 'package:app/View/chats/message_screen.dart';
import 'package:app/View/chats/video_call.dart';
import 'package:app/utils/colors.dart';
import 'package:app/utils/icon_container_widget.dart';
import 'package:app/utils/images.dart';
import 'package:app/utils/normal_txt.dart';
import 'package:flutter/material.dart';

class Audiocall extends StatefulWidget {
  const Audiocall({super.key});

  @override
  State<Audiocall> createState() => _AudiocallState();
}

class _AudiocallState extends State<Audiocall> {
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
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MessageScreen()));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_sharp,
              color: AppColors.grayAC,
            )),
      ),
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(Images.customBgImg))),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 130,
                ),
                const Column(
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage('assets/images/patrica.png'),
                    ),
                    Text(
                      'Patricia',
                      style: TextStyle(fontSize: 28, color: AppColors.gray5E),
                    ),
                    Text(
                      'Calling...',
                      style: TextStyle(fontSize: 14, color: AppColors.gray5E),
                    )
                  ],
                ),
                const SizedBox(
                  height: 250,
                ),
                IconContainer(
                    height: 80,
                    width: 80,
                    iconSize: 40,
                    color: AppColors.primaryColor,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MessageScreen()));
                    },
                    icon: const Icon(
                      Icons.call_end_outlined,
                      color: AppColors.white,
                    )),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconContainer(
                        height: 60,
                        width: 60,
                        iconSize: 30,
                        color: AppColors.white,
                        onTap: () {},
                        icon: const Icon(
                          Icons.volume_up_outlined,
                          color: AppColors.grayAC,
                        )),
                    IconContainer(
                        height: 60,
                        width: 60,
                        iconSize: 30,
                        color: AppColors.white,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const VideoCall()));
                        },
                        icon: const Icon(
                          Icons.video_call_outlined,
                          color: AppColors.grayAC,
                        )),
                    IconContainer(
                        height: 60,
                        width: 60,
                        iconSize: 30,
                        color: AppColors.white,
                        onTap: () {},
                        icon: const Icon(
                          Icons.mic_off,
                          color: AppColors.grayAC,
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
