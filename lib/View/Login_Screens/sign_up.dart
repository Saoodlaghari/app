import 'package:app/Controller/sign_up_controller.dart';
import 'package:app/View/Login_Screens/profile.dart';
import 'package:app/View/Login_Screens/sign_in.dart';
import 'package:app/utils/button.dart';
import 'package:app/utils/colors.dart';
import 'package:app/utils/heading.dart';
import 'package:app/utils/images.dart';
import 'package:app/utils/normal_txt.dart';
import 'package:app/utils/text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();

  // }
  final SignUpController controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Images.customBgImg), fit: BoxFit.cover)),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Center(
                    child:
                        Image(width: 155, image: AssetImage(Images.customLogo)),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Heading(text: 'Sign up'),
                  const NormalText(
                      font: 14, text: 'Please login to continue using our app'),
                  const SizedBox(
                    height: 40,
                  ),
                  Form(
                      key: formKey,
                      child: Column(
                        children: [
                          MyTextFiled(
                              keyBoardType: TextInputType.name,
                              obsecure: false,
                              hintText: 'Your Name',
                              controller: controller.nameController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'enter name';
                                } else {
                                  return null;
                                }
                              }),
                          const SizedBox(
                            height: 10,
                          ),
                          MyTextFiled(
                              keyBoardType: TextInputType.emailAddress,
                              obsecure: false,
                              hintText: 'Your Email',
                              controller: controller.emailController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'enter email';
                                } else {
                                  return null;
                                }
                              }),
                          const SizedBox(
                            height: 10,
                          ),
                          MyTextFiled(
                              keyBoardType: TextInputType.visiblePassword,
                              obsecure: true,
                              hintText: 'Password',
                              controller: controller.passwordController,
                              icon: const Icon(Icons.visibility_off_outlined),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'enter password';
                                } else {
                                  return null;
                                }
                              }),
                        ],
                      )),
                  const SizedBox(
                    height: 90,
                  ),
                  Button(
                      text: 'Sign up',
                      width: 300,
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          controller.SignUpUser();
                        }
                      }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("Already have an Account ",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: AppColors.grayA4)),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignIn()));
                          },
                          child: const Text("Sign in",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.bold))),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
