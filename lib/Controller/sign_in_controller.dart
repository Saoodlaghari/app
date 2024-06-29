import 'package:app/Controller/authentication.dart';
import 'package:app/View/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signInUser() async {
    String res = await AuthenticationService().signInUser(
        email: emailController.text, password: passwordController.text);

    if (res == "success") {
      Get.to(() => Dashboard());
    }
  }
}
