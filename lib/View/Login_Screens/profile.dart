import 'package:app/View/Login_Screens/payment.dart';
import 'package:app/utils/about_me.dart';
import 'package:app/utils/button.dart';
import 'package:app/utils/sized_boxt.dart';
import 'package:app/utils/profile_text.dart';
import 'package:app/utils/profile_textfield.dart';
import 'package:app/utils/sized_boxtwenty.dart';
import 'package:app/utils/tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

final TextEditingController nameController = TextEditingController();
final TextEditingController birthdayController = TextEditingController();
final TextEditingController locationController = TextEditingController();
final TextEditingController jobController = TextEditingController();
final TextEditingController companyController = TextEditingController();
final TextEditingController collegeController = TextEditingController();
final TextEditingController intrestController = TextEditingController();
final TextEditingController aboutController = TextEditingController();

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/bg.png'))),
          child: Column(
            children: [
              //First child Background image
              Container(
                height: 230,
                // width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/profile_bg.png'),
                        fit: BoxFit.cover)),
                child: const Center(
                  child: Icon(
                    Icons.add_a_photo_outlined,
                    size: 40,
                  ),
                ),
              ),
              const SizedBoxT(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //first Text field for name
                    const ProfileText(text: 'Name'),
                    const SizedBox(
                      height: 5,
                    ),
                    ProfileTextField(
                      controller: nameController,
                      text: 'Your Email',
                      icon: Icon(
                        Icons.person,
                        color: Color(0xffFDB813),
                      ),
                    ),
                    //second text field for birthday
                    const SizedBoxTwenty(),
                    const ProfileText(text: 'Bithday'),
                    const SizedBox(
                      height: 5,
                    ),
                    ProfileTextField(
                        controller: birthdayController,
                        text: '05/MM/YYYY',
                        icon: const Icon(
                          Icons.calendar_month_sharp,
                          color: Color(0xffFDB813),
                        )),
                    //3rd and 4th text field for Calender
                    const SizedBoxTwenty(),
                    const ProfileText(text: 'calender'),

                    //5th text field for location
                    const SizedBoxTwenty(),
                    const ProfileText(text: 'Location'),
                    const SizedBox(
                      height: 5,
                    ),
                    ProfileTextField(
                        controller: locationController,
                        text: 'Jakarta, Indonesia',
                        icon: const Icon(
                          Icons.location_on,
                          color: Color(0xffFDB813),
                        )),
                    //6th text field for job
                    const SizedBoxTwenty(),
                    const ProfileText(text: 'Job'),
                    const SizedBox(
                      height: 5,
                    ),
                    ProfileTextField(
                        controller: jobController,
                        text: 'Graphic Designer',
                        icon: const Icon(
                          Icons.shopping_bag_outlined,
                          color: Color(0xffFDB813),
                        )),
                    //7th text field for Company
                    const SizedBoxTwenty(),
                    const ProfileText(text: 'Company'),
                    const SizedBox(
                      height: 5,
                    ),
                    ProfileTextField(
                        controller: companyController,
                        text: 'Design Center',
                        icon: const Icon(
                          Icons.other_houses_outlined,
                          color: Color(0xffFDB813),
                        )),
                    //8th for college
                    const SizedBoxTwenty(),
                    const ProfileText(text: 'College'),
                    const SizedBox(
                      height: 5,
                    ),
                    ProfileTextField(
                        controller: collegeController,
                        text: 'Design Int School',
                        icon: const Icon(
                          Icons.school_outlined,
                          color: Color(0xffFDB813),
                        )),
                    // 9th for interest
                    const SizedBox(
                      height: 30,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Interest',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ProfileTextField(
                        controller: intrestController,
                        text: 'Interest',
                        icon: const Icon(
                          Icons.add_box_outlined,
                          color: Color(0xff934C93),
                        )),
                    const SizedBoxT(),
                    const Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Tag(text: 'Chat with someone', width: 180),
                        SizedBox(
                          width: 15,
                        ),
                        Tag(text: 'Partner', width: 100),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const ProfileText(text: 'About me'),
                    const SizedBoxT(),
                    AboutMe(
                      text: 'Enter text',
                      controller: aboutController,
                    ),
                    const SizedBoxTwenty(),
                    Button(
                        text: 'Continue',
                        width: 300,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PaymentScreen()));
                        }),
                    const SizedBoxTwenty()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
