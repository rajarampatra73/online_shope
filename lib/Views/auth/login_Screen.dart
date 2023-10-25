// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:online_shope/Views/auth/singup_Screen.dart';
import 'package:online_shope/Widget_Items/appLogo_widget.dart';
import 'package:online_shope/Widget_Items/bg_widget.dart';
import 'package:online_shope/Widget_Items/custom_textfield.dart';
import 'package:online_shope/Widget_Items/o_button.dart';
import 'package:online_shope/controller/auth_controller.dart';
import 'package:online_shope/src/consts.dart';
import 'package:online_shope/src/lists.dart';
import 'package:get/get.dart';
import '../home.dart';


class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
var controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return
      bgWidget(
          child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            apploWidget(),
            15.heightBox,
            "Log in to $appname".text.fontFamily(bold).white.size(18.0).make(),
            10.heightBox,
              Obx( ()=> Column(
                 children: [
                   customTextField( title: name, hint: appname, isPass: false,
                     controller: controller.emailController
                     ),
                   customTextField(title: password, hint: passwordHint,isPass: true,
                   controller: controller.passwordController),
                   Align(
                     alignment: Alignment.centerRight,
                     child: TextButton(onPressed: (){},
                         child: forgetPass.text.make()),
                   ),
                   5.heightBox,
                   controller.isLoading.value? const CircularProgressIndicator(
                     valueColor: AlwaysStoppedAnimation(redColor),
                   ) :
                   oButton(color: redColor,
                     textColor: whiteColor,
                     texts: login,
                     onClick: () async {
/// login is already in progress
                     try {
                       Get.offAll(() => const Home());
                       controller.isLoading(true);
                     } catch (e, s) {
                       controller.isLoading(false);

                       print(s);
                     }

                     // await controller.loginMethod(context: context).then((value) {
                     //   if (value!= null){
                     //     VxToast.show(context, msg: loggedIn);
                     //     Get.offAll(() => const Home());
                     //
                     //   }
                     // });

                   }).box.width(context.screenWidth -50).make(),
                   5.heightBox,
                   createNewAccount.text.fontFamily(bold).color(fontGrey).make(),
                   5.heightBox,
                   oButton(color: golden,onClick: (){
                     Get.to(() => const SignUp_Screen());
                   },textColor: whiteColor,texts: signup)
                       .box.width(context.screenWidth -50).make(),
                   10.heightBox,
                   loginWith.text.color(fontGrey).make(),
                   5.heightBox,

                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: List.generate(3, (index) => Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: CircleAvatar(
                         backgroundColor: lightGrey,
                         radius: 25,
                         child: Image.asset(socialIconlist[index]
                         ,width: 30.0,
                         ),
                       ),
                     )),
                   ),




                 ],
             ).box.white.rounded.padding(
                    const EdgeInsets.all(16.0))
                    .width(context.screenWidth -70).shadowSm.make(),
              ),
          ],
        )),
      ));

  }
}
