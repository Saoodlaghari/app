import 'package:app/utils/chattile_for_fav.dart';
import 'package:app/utils/colors.dart';
import 'package:app/utils/images.dart';
import 'package:app/utils/normal_txt.dart';
import 'package:app/utils/search_widget.dart';
import 'package:app/utils/sized_boxtwenty.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<String> titles = [
    'Indira,23',
    'Ranni21,',
    'Maurem,22',
    'Nayla,20',
    'Ghea,19',
    'Xenna,24',
    'Kelly,23',
    'Qyna,23'
  ];
  List<String> subtitles = [
    'fashion Designer',
    'Nurse',
    'Cashier',
    'Teller',
    'Air Hostess',
    'Teacher',
    'Singer',
    'Journalist'
  ];
  List<String> images = [
    'assets/images/profile 1.png',
    'assets/images/profile 2.png',
    'assets/images/profile 3.png',
    'assets/images/profile 4.png',
    'assets/images/profile 5.png',
    'assets/images/profile 6.png',
    'assets/images/profile 7.png',
    'assets/images/profile 8.png'
  ];
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const NormalText(
          text: 'All Matches',
          font: 16,
        ),
        leading: const Icon(
          CupertinoIcons.back,
          color: AppColors.grayA4,
        ),
        actions: const [
          Icon(
            CupertinoIcons.bell,
            color: AppColors.customIconColor,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5, right: 15),
            child: Icon(
              Icons.menu,
              color: AppColors.customIconColor,
            ),
          )
        ],
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(Images.customBgImg))),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBoxTwenty(),
                SearchWidget(hintText: ' Search', controller: controller),
                SizedBoxTwenty(),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: titles.length,
                      itemBuilder: (context, index) {
                        return FavChatTile(
                            title: titles[index],
                            subtitle: subtitles[index],
                            imageURL: images[index]);
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
