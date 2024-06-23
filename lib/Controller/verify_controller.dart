import 'package:get/get.dart';
import 'dart:async';

class VerifyController extends GetxController {
  RxInt seconds = 10.obs;
  Timer? timer;
  RxBool showResendButton = false.obs;

  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (seconds > 0) {
        seconds--;
      } else {
        showResendButton.value = true;
        timer.cancel();
      }
    });
  }

  void resendCode() {
    seconds.value = 10;
    showResendButton.value = false;
    startTimer();
  }

  @override
  void onClose() {
    timer?.cancel();
    super.onClose();
  }
}
