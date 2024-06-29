import 'package:app/utils/toaster_message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  //for storing data in cloud firestore
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  //for authentication
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //for Sign Up
  Future<String> signUpUser(
      {required String email,
      required String password,
      required String name}) async {
    String res = 'Some error occured';
    try {
      //for register user in fire base auth  with email and password
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      //for add user to our cloud firestore
      await _firestore.collection("users").doc(userCredential.user!.uid).set({
        "name": name,
        "email": email,
        "uid": userCredential.user!.uid,
      });
      res = "success";
    } catch (e) {
      ToasterMessage().showToastMessage(e.toString());
    }
    return res;
  }

  // for sign in
  Future<String> signInUser(
      {required String email, required String password}) async {
    String res = " Some error occurred ";
    try {
      // for register user in firebase auth with email and password
      await _auth.signInWithEmailAndPassword(email: email, password: password);

      res = "success";
    } catch (e) {
      ToasterMessage().showToastMessage(e.toString());
    }
    return res;
  }

  Future<String> ResetPass({
    required String email,
  }) async {
    String res = " Some error occurred ";
    try {
      // for register user in firebase auth with email and password
      await _auth.sendPasswordResetEmail(email: email);

      res = "success";
    } catch (e) {
      ToasterMessage().showToastMessage(e.toString());
    }
    return res;
  }
}
