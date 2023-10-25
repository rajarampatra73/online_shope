// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shope/Views/home.dart';
import 'package:online_shope/Widget_Items/appLogo_widget.dart';
import 'package:online_shope/Widget_Items/bg_widget.dart';
import 'package:online_shope/Widget_Items/custom_textfield.dart';
import 'package:online_shope/Widget_Items/o_button.dart';
import 'package:online_shope/controller/auth_controller.dart';
import 'package:online_shope/src/consts.dart';

class SignUp_Screen extends StatefulWidget {
  const SignUp_Screen({super.key});

  @override
  State<SignUp_Screen> createState() => _SignUp_ScreenState();
}

class _SignUp_ScreenState extends State<SignUp_Screen> {
  bool? isChecked = false;
  var controller = Get.put(AuthController());

  //text controllers
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordRetypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: Column(
        children: [
          (context.screenHeight * 0.1).heightBox,
          apploWidget(),
          15.heightBox,
          "Join the $appname".text.fontFamily(bold).white.size(18.0).make(),
          10.heightBox,
          Obx(()=> Column(
              children: [
//TODO: customTextField
                customTextField(
                    title: name, hint: appname,
                  controller: nameController,isPass: false),
                customTextField(
                    title: email, hint: emailHint,
                  controller: emailController,isPass: false),
                customTextField(
                    title: password,
                    hint: passwordHint,
                    controller: passwordController, isPass: true),
                customTextField(
                    title: retypePassword,
                    hint: passwordHint,
                    controller: passwordRetypeController,isPass: true),
                Align(
                  alignment: Alignment.centerRight,
                  child:
                      TextButton(onPressed: () {}, child: forgetPass.text.make()),
                ),
                5.heightBox,
                createNewAccount.text.fontFamily(bold).color(fontGrey).make(),
                5.heightBox,
                Row(
                  children: [
                    Checkbox(
                        checkColor: redColor,
                        value: isChecked,
                        onChanged: (newValue) {
                          setState(() {
                            isChecked = newValue;
                          });
                        }),
                    10.heightBox,
                    Expanded(
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: "I agree with ",
                            style: TextStyle(
                              fontFamily: regular,
                              color: fontGrey,
                            )),
                        TextSpan(
                            text: termAndConditions,
                            style: TextStyle(
                              fontFamily: regular,
                              color: redColor,
                            )),
                        TextSpan(
                            text: " & ",
                            style: TextStyle(
                              fontFamily: regular,
                              color: fontGrey,
                            )),
                        TextSpan(
                            text: privacyPolicy,
                            style: TextStyle(
                              fontFamily: regular,
                              color: redColor,
                            ))
                      ])),
                    ),
                  ],
                ),
                10.heightBox,
                controller.isLoading.value? const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(redColor),
                ) : oButton(
                        color: isChecked == true ? redColor : lightGrey,
                        onClick: () async {
                          if (isChecked != false) {
                            controller.isLoading(true);
                            try {
                             await  controller.sigUpMethod(
                                      context: context,
                                      email: emailController.text,
                                      password: passwordController.text).then((value)
                              {
                                return controller.storeUserData(
                                  name: nameController.text,
                                  email: emailController.text,
                                  password: passwordController.text,
                                );
                              }).then((value) {
                                VxToast.show(context, msg: loggedIn);
                                Get.offAll(()=> const Home());
                              });
                            } catch (e) {
                            //  VxToast.show(context, msg: loggedOut);
                              controller.isLoading(false);
                              auth.signOut();
                            }
                          }
                        },
                        textColor: whiteColor,
                        texts: signup)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                5.heightBox,
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16.0))
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
          ),
          10.heightBox,
          // clicked to back button with get x
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              alreadyHaveAccount.text.color(fontGrey).make(),
              login.text.color(redColor).make().onTap(() {
                Get.back();
              })
            ],
          ),
        ],
      )),
    ));
  }
}
