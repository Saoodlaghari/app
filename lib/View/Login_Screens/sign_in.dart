import 'package:app/View/Login_Screens/forgot_pass.dart';
import 'package:app/View/Login_Screens/profile.dart';
import 'package:app/View/Login_Screens/sign_up.dart';
import 'package:app/utils/button.dart';
import 'package:app/utils/heading.dart';
import 'package:app/utils/normal_txt.dart';
import 'package:app/utils/text_field.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
          padding: const EdgeInsets.symmetric(horizontal: 40),
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
              const Heading(text: 'Sign in'),
              const NormalText(
                  font: 14, text: 'Please login to continue using our app'),
              const SizedBox(
                height: 40,
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
                height: 5,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPass()));
                },
                child: const Text(
                  textAlign: TextAlign.end,
                  'Forgot Password',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff934C93)),
                ),
              ),
              const SizedBox(
                height: 130,
              ),
              Button(
                text: 'Sign in',
                width: 300,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profile()));
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("Don't have an Account ?",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffA4A4A4))),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: const Text("Sign Up",
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
