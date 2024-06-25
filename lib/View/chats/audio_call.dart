import 'package:app/View/chats/message_screen.dart';
import 'package:app/View/chats/video_call.dart';
import 'package:app/utils/icon_container_widget.dart';
import 'package:app/utils/normal_txt.dart';
import 'package:app/utils/sized_boxtwenty.dart';
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MessageScreen()));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Color(0xffACACAC),
            )),
      ),
      body: Container(
        width: double.maxFinite,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/images/bg.png'))),
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
                      style: TextStyle(fontSize: 28, color: Color(0xff5E5E5E)),
                    ),
                    Text(
                      'Calling...',
                      style: TextStyle(fontSize: 14, color: Color(0xff5E5E5E)),
                    )
                  ],
                ),
                SizedBox(
                  height: 250,
                ),
                IconContainer(
                    height: 80,
                    width: 80,
                    iconSize: 40,
                    color: Color(0xff934C93),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MessageScreen()));
                    },
                    icon: Icon(
                      Icons.call_end_outlined,
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconContainer(
                        height: 60,
                        width: 60,
                        iconSize: 30,
                        color: Colors.white,
                        onTap: () {},
                        icon: const Icon(
                          Icons.volume_up_outlined,
                          color: Color(0xffACACAC),
                        )),
                    IconContainer(
                        height: 60,
                        width: 60,
                        iconSize: 30,
                        color: Colors.white,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoCall()));
                        },
                        icon: const Icon(
                          Icons.video_call_outlined,
                          color: Color(0xffACACAC),
                        )),
                    IconContainer(
                        height: 60,
                        width: 60,
                        iconSize: 30,
                        color: Colors.white,
                        onTap: () {},
                        icon: const Icon(
                          Icons.mic_off,
                          color: Color(0xffACACAC),
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
