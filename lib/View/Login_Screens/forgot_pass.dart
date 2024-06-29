import 'package:app/Controller/forgot_pass_controller.dart';
import 'package:app/View/Login_Screens/sign_in.dart';
import 'package:app/View/Login_Screens/verify.dart';
import 'package:app/utils/button.dart';
import 'package:app/utils/colors.dart';
import 'package:app/utils/heading.dart';
import 'package:app/utils/images.dart';
import 'package:app/utils/normal_txt.dart';
import 'package:app/utils/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  final ForgotPassController controller = Get.put(ForgotPassController());
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
              const Heading(text: 'Forgot\nPassword'),
              const NormalText(
                  font: 14,
                  text:
                      "if you’ve forgotten your password, don’t worry.Enter your email address below and we’ll helpyou reset"),
              const SizedBox(
                height: 40,
              ),
              Form(
                key: controller.formKey,
                child: MyTextFiled(
                    keyBoardType: TextInputType.emailAddress,
                    obsecure: false,
                    hintText: 'saoodlaghari1@gmail.com',
                    controller: controller.emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'enter email';
                      } else {
                        return null;
                      }
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("Back to",
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
              const SizedBox(
                height: 130,
              ),
              Button(
                  text: 'Reset password',
                  width: 300,
                  onPressed: () {
                    if (controller.formKey.currentState!.validate()) {
                      controller.ResetPass();
                    }
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const Verify()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
