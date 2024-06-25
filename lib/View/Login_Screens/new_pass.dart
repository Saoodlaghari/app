import 'package:app/View/Login_Screens/forgot_pass.dart';
import 'package:app/View/Login_Screens/sign_in.dart';
import 'package:app/utils/button.dart';
import 'package:app/utils/colors.dart';
import 'package:app/utils/heading.dart';
import 'package:app/utils/images.dart';
import 'package:app/utils/normal_txt.dart';
import 'package:app/utils/text_field.dart';
import 'package:flutter/material.dart';

class NewPass extends StatefulWidget {
  const NewPass({super.key});

  @override
  State<NewPass> createState() => _NewPassState();
}

class _NewPassState extends State<NewPass> {
  final TextEditingController newPassController = TextEditingController();
  final TextEditingController confirmNewPassController =
      TextEditingController();
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: Image(width: 155, image: AssetImage(Images.customLogo)),
              ),
              const SizedBox(
                height: 40,
              ),
              const Heading(text: 'Create New Password'),
              const NormalText(
                  font: 15,
                  text:
                      'Please create a new password for your account.Your password must be different from your previous one.'),
              const SizedBox(
                height: 40,
              ),
              MyTextFiled(
                  hintText: 'New Password',
                  controller: confirmNewPassController,
                  icon: const Icon(Icons.visibility_off_outlined)),
              const SizedBox(
                height: 10,
              ),
              MyTextFiled(
                hintText: 'Confirm Your Password',
                controller: newPassController,
                icon: const Icon(Icons.visibility_off_outlined),
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
                      color: AppColors.primaryColor),
                ),
              ),
              const SizedBox(
                height: 130,
              ),
              Button(
                text: 'Change Password',
                width: 300,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignIn()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
