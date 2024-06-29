import 'package:app/Controller/sign_in_controller.dart';
import 'package:app/View/Login_Screens/forgot_pass.dart';
import 'package:app/View/Login_Screens/sign_up.dart';
import 'package:app/View/bottom_nav_bar.dart';
import 'package:app/utils/button.dart';
import 'package:app/utils/colors.dart';
import 'package:app/utils/heading.dart';
import 'package:app/utils/images.dart';
import 'package:app/utils/normal_txt.dart';
import 'package:app/utils/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  void dispose() {
    super.dispose();
    controller.emailController.dispose();
    controller.passwordController.dispose();
  }

  final SignInController controller = Get.put(SignInController());
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
                const Heading(text: 'Sign in'),
                const NormalText(
                    font: 14, text: 'Please login to continue using our app'),
                const SizedBox(
                  height: 40,
                ),
                Form(
                    key: controller.formKey,
                    child: Column(
                      children: [
                        MyTextFiled(
                            hintText: 'Your Email',
                            controller: controller.emailController,
                            keyBoardType: TextInputType.emailAddress,
                            obsecure: false,
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
                            hintText: 'Password',
                            obsecure: true,
                            controller: controller.passwordController,
                            icon: Icon(Icons.visibility_off_outlined),
                            keyBoardType: TextInputType.visiblePassword,
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
                        color: AppColors.primaryColor),
                  ),
                ),
                const SizedBox(
                  height: 130,
                ),
                Button(
                  text: 'Sign in',
                  width: 300,
                  onPressed: () {
                    if (controller.formKey.currentState!.validate()) {
                      controller.signInUser();
                    }
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        child: const Text("Sign Up",
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
    );
  }
}
