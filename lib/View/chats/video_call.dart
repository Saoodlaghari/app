import 'package:app/View/chats/message_screen.dart';
import 'package:app/utils/colors.dart';
import 'package:app/utils/icon_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class VideoCall extends StatefulWidget {
  const VideoCall({super.key});

  @override
  State<VideoCall> createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Video Call',
          style: TextStyle(fontSize: 16, color: AppColors.white),
        ),
        leading: IconButton(
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => ));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.white,
            )),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.flip_camera_ios_outlined,
                    color: Colors.white,
                    size: 30,
                  )))
        ],
      ),
      body: Container(
        width: double.maxFinite,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/videobg.png'))),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                const Image(
                    width: 180, image: AssetImage('assets/images/man.png')),
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
                        color: Colors.white,
                        onTap: () {},
                        icon: const Icon(
                          Icons.volume_up_outlined,
                          color: AppColors.grayAC,
                        )),
                    IconContainer(
                        height: 80,
                        width: 80,
                        iconSize: 30,
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
                    IconContainer(
                        height: 60,
                        width: 60,
                        iconSize: 30,
                        color: Colors.white,
                        onTap: () {},
                        icon: const Icon(
                          Icons.mic_off,
                          color: AppColors.grayAC,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
