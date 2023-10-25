
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shope/Views/splash_screen.dart';
import 'package:online_shope/src/consts.dart';
import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
   Firebase.initializeApp();
 // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    // GET X to Material App

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
       theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
              // TODO: APP BAR COLOR
              color: darkFontGrey,
            ),
            backgroundColor: Colors.transparent),
        fontFamily: regular,
      ),
      home: const SafeArea(child: SplashScreen()),
    );
  }
}
