import 'package:app/View/chats/message_screen.dart';
import 'package:app/utils/chat_tile.dart';
import 'package:app/utils/colors.dart';
import 'package:app/utils/images.dart';
import 'package:app/utils/normal_txt.dart';
import 'package:app/utils/search_widget.dart';
import 'package:app/utils/sized_boxt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController controller = TextEditingController();
  List<String> images = [
    'assets/images/profile 1.png',
    'assets/images/profile 2.png',
    'assets/images/profile 3.png',
    'assets/images/profile 4.png',
    'assets/images/profile 5.png',
    'assets/images/profile 6.png',
  ];
  List<String> chatImages = [
    'assets/images/profile 1.png',
    'assets/images/profile 2.png',
    'assets/images/profile 3.png',
    'assets/images/profile 4.png',
    'assets/images/profile 5.png',
    'assets/images/profile 6.png',
  ];
  List<String> titles = [
    'Patrica',
    'Lyana',
    'Merry',
    'Merry',
    'Merry',
    'Merry',
  ];
  List<String> subTitle = [
    'Lorem lpsum is simply',
    'Lorem lpsum is simply',
    'Lorem lpsum is simply',
    'Lorem lpsum is simply',
    'Lorem lpsum is simply',
    'Lorem lpsum is simply',
  ];

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
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: const Icon(
            CupertinoIcons.back,
            color: AppColors.grayAC,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.delete,
              color: AppColors.customIconColor,
            ),
          ),
        ],
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(Images.customBgImg))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SearchWidget(
                      hintText: 'Search Message', controller: controller),
                  SizedBoxT(),
                  Row(
                    children: [
                      const Text(
                        'New Matches',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff5E5E5E)),
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(images[index]),
                      ),
                    );
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Messages',
                style: TextStyle(
                    color: Color(0xff5E5E5E),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            // const SizedBoxTwenty(),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: titles.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MessageScreen()));
                        },
                        child: ChatTile(
                            title: titles[index],
                            subtitle: subTitle[index],
                            imageURL: chatImages[index]),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
