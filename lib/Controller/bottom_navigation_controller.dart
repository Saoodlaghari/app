import 'package:get/get.dart';

class DashBoardController extends GetxController {
  var currentIndex = 0.obs;
  void changeIndex(int value) {
    currentIndex.value = value;
  }
}
