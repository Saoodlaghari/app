import 'package:app/Controller/bottom_navigation_controller.dart';
import 'package:app/View/Home%20Screens/favorite.dart';
import 'package:app/View/chats/chat.dart';
import 'package:app/View/Home%20Screens/home_screen.dart';
import 'package:app/View/Home%20Screens/profile_screen.dart';
import 'package:app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

final screens = [
  const HomeScreen(),
  const ChatScreen(),
  const FavoriteScreen(),
  const ProfileScreen()
];

class _DashboardState extends State<Dashboard> {
  final DashBoardController controller = Get.put(DashBoardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
          () => IndexedStack(
            index: controller.currentIndex.value,
            children: screens,
          ),
        ),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
                iconSize: 30,
                backgroundColor: Colors.white,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: AppColors.primaryColor,
                unselectedItemColor: AppColors.grayAC,
                showSelectedLabels: true,
                showUnselectedLabels: false,
                onTap: (index) {
                  controller.changeIndex(index);
                },
                currentIndex: controller.currentIndex.value,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.home), label: 'home'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.chat_bubble), label: 'Chat'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.heart), label: 'Favorite'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.person_alt_circle),
                      label: 'Profile')
                ])));
  }
}
