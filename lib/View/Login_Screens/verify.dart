import 'package:app/Controller/verify_controller.dart';
import 'package:app/View/Login_Screens/new_pass.dart';
import 'package:app/utils/button.dart';
import 'package:app/utils/colors.dart';
import 'package:app/utils/heading.dart';
import 'package:app/utils/images.dart';
import 'package:app/utils/normal_txt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  final VerifyController controller = Get.put(VerifyController());

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
              const SizedBox(
                height: 40,
              ),
              const Heading(text: 'Verify Your\nEmail'),
              const NormalText(font: 14, text: 'Enter Verification Code'),
              const SizedBox(
                height: 40,
              ),
              PinCodeTextField(
                appContext: context,
                length: 4,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.circle,
                  fieldWidth: 60,
                  activeColor: AppColors.primaryColor,
                  inactiveColor: AppColors.primaryColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("If you didn't recieved a Code ?",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffA4A4A4))),
                  Obx(
                    () => controller.showResendButton.value
                        ? TextButton(
                            onPressed: controller.resendCode,
                            child: const Text(
                              'Resend',
                              style: TextStyle(
                                  fontSize: 14, color: AppColors.primaryColor),
                            ),
                          )
                        : Text(
                            '${controller.seconds.value} seconds',
                            style: const TextStyle(
                                fontSize: 14, color: AppColors.primaryColor),
                          ),
                  )
                ],
              ),
              const SizedBox(
                height: 130,
              ),
              Button(
                  text: 'Verify',
                  width: 300,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NewPass()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
