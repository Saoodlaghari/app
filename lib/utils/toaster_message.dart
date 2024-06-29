import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToasterMessage {
  void showToastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.red,
      textColor: Colors.black,
      fontSize: 16.0,
    );
  }
}
