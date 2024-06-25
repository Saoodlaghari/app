import 'package:app/Controller/payment_screen_controller.dart';
import 'package:app/View/bottom_nav_bar.dart';
import 'package:app/utils/button.dart';
import 'package:app/utils/heading.dart';
import 'package:app/utils/normal_txt.dart';
import 'package:app/utils/payment_card.dart';
import 'package:app/utils/sized_boxt.dart';
import 'package:app/utils/sized_boxtwenty.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final PaymentController controller = Get.put(PaymentController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Heading(text: "Premium\nAccess"),
            const SizedBoxT(),
            const NormalText(
                font: 14,
                text:
                    'Lorem Ipsum is simply dummy text of the printing andtypesetting industry. Lorem Ipsum is simply dummytext of '),
            const SizedBox(
              height: 40,
            ),
            //First card
            Obx(
              () => PaymentCard(
                isSelected: controller.selectedIndex.value == 0,
                title: 'Weekly',
                subtitle: 'Standard Offer',
                price: '\$100.00 per week',
                onTap: () {
                  controller.selectcard(0);
                },
              ),
            ),
            //Second card
            const SizedBoxTwenty(),
            Obx(
              () => PaymentCard(
                isSelected: controller.selectedIndex.value == 1,
                title: 'Weekly',
                subtitle: 'Standard Offer',
                price: '\$100.00 per week',
                onTap: () {
                  controller.selectcard(1);
                },
              ),
            ),
            //3rd Card
            const SizedBoxTwenty(),
            Obx(
              () => PaymentCard(
                isSelected: controller.selectedIndex.value == 2,
                title: 'Weekly',
                subtitle: 'Standard Offer',
                price: '\$100.00 per week',
                onTap: () {
                  controller.selectcard(2);
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Button(
                text: 'Subscribe',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Dashboard()));
                },
                width: 280)
          ],
        ),
      ),
    );
  }
}
