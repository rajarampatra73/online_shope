
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:online_shope/src/consts.dart';
import 'package:online_shope/src/firebase_const.dart';

class AuthController extends GetxController {
  var isLoading = false.obs;

  //
  //text controllers
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordRetypeController = TextEditingController();

  //TODO: login
  Future<UserCredential?> loginMethod({context}) async {
    UserCredential? userCredential;
    try {
      userCredential=
      await auth.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context , msg: e.toString());
    }
    return userCredential;
  }

//TODO: sigUp
  Future<UserCredential?> sigUpMethod({email, password,context}) async {
    UserCredential? userCredential;
    try {
    userCredential=  await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }

//TODO: store user data
  storeUserData({name, password, email}) async {
    DocumentReference stored =
    await  firestore.collection(userCollection).doc(currentUser!.uid);
    stored.set(
        {'name': name, 'password': password, 'email': email, 'imageUrl': '',
          'id': currentUser!.uid});
  }

  signOutMethod(context) async {
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }


  }
}
