import 'dart:async';

import 'package:app/View/Login_Screens/sign_in.dart';
import 'package:app/utils/images.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const SignIn()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Images.customSpBgImg), fit: BoxFit.cover)),
        child: Center(
            child: Image(
                width: 279,
                height: 232,
                image: AssetImage(Images.customSpLogo))),
      ),
    );
  }
}
