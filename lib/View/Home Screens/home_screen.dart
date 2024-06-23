import 'package:app/View/Home%20Screens/home_listtile.dart';
import 'package:app/View/Login_Screens/payment.dart';
import 'package:app/utils/normal_txt.dart';
import 'package:app/utils/profile_card.dart';
import 'package:app/utils/sized_boxt.dart';
import 'package:app/utils/sized_boxtwenty.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    'assets/images/profile 1.png',
    'assets/images/profile 2.png',
    'assets/images/profile 3.png',
    'assets/images/profile 4.png',
    'assets/images/profile 5.png',
    'assets/images/profile 6.png',
  ];
  List<String> images2 = ['assets/images/bg1.png', 'assets/images/bg2.png'];
  List<String> titles = ['Sahara Ardia Fadia', 'Nathalia Angeline'];
  List<String> subTitles = ['Nurse Friendly', 'Dancer,Friendly'];
  List<String> distance = ['0.5 km', '0.5 km'];

  List<String> name = ['Natasya Valentina', 'Natasya Valentina'];
  List<String> location = ['Sekarwangi, Cibadak', 'Sekarwangi, Cibadak'];
  List<String> profileimages = [
    'assets/images/girl.png',
    'assets/images/girl2.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const NormalText(
          text: 'Home',
          font: 16,
        ),
        leading: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PaymentScreen()));
          },
          child: const Icon(
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
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/images/bg.png'))),
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 20, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  const Text(
                    'New Matches',
                    style: TextStyle(fontSize: 14, color: Color(0xff5E5E5E)),
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
              SizedBox(
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
              const SizedBoxTwenty(),
              const Text(
                'Near You',
                style: TextStyle(
                    color: Color(0xff421421),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: titles.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ProfileCard(
                          title: titles[index],
                          subtitle: subTitles[index],
                          imageUrl: images2[index],
                          distance: distance[index]),
                    );
                  },
                ),
              ),
              const SizedBoxTwenty(),
              Row(
                children: [
                  const Text(
                    'Recent Partner',
                    style: TextStyle(
                        color: Color(0xff421421),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text('View All',
                          style: TextStyle(
                              fontSize: 14, color: Color(0xff5E5E5E)))),
                ],
              ),
              const SizedBoxTwenty(),
              for (int i = 0; i < name.length; i++)
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: HomeListTile(
                      title: name[i],
                      subtitle: location[i],
                      imageUrl: profileimages[i]),
                )
            ],
          ),
        ),
      ),
    );
  }
}
