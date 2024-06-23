import 'package:app/View/Login_Screens/profile.dart';
import 'package:app/View/Login_Screens/sign_in.dart';
import 'package:app/utils/button.dart';
import 'package:app/utils/heading.dart';
import 'package:app/utils/normal_txt.dart';
import 'package:app/utils/text_field.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover)),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Center(
                child: Image(
                    width: 155, image: AssetImage('assets/images/logo.png')),
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
              MyTextFiled(
                hintText: 'Your Name',
                controller: nameController,
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextFiled(
                hintText: 'Your Email',
                controller: emailController,
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextFiled(
                hintText: 'Password',
                controller: passwordController,
                icon: Icon(Icons.visibility_off_outlined),
              ),
              const SizedBox(
                height: 90,
              ),
              Button(
                  text: 'Sign up',
                  width: 300,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile()));
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("Already have an Account ",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffA4A4A4))),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      child: const Text("Sign in",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff934C93),
                              fontWeight: FontWeight.bold))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
