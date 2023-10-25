import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:online_shope/Widget_Items/appLogo_widget.dart';
import 'package:online_shope/src/colors.dart';
import 'package:online_shope/src/consts.dart';

import 'auth/login_Screen.dart';
import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const Home());

      /// auth.authStateChanges().listen((User? user) {
      //       if (user  == null && mounted){
      //         Get.to(() => const loginScreen());
      //       }else {
      //         Get.to(() => const Home());
      //       }
      //     });
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: redColor,
      body: Center(
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.center ,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(icSplashBg, width: 300)),
              ],
            ),
            20.heightBox,
            apploWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22.0).white.make(),
            5.heightBox,
            appversion.text.white.make(),
            30.heightBox,

            credits.text.white.fontFamily(semibold).make(),
            30.heightBox,
            // end of splash screen
          ],
        ),
      ),
    );
  }
}
