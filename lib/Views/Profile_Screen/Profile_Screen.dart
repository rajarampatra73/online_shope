import 'package:get/get.dart';
import 'package:online_shope/Views/Profile_Screen/components/details_cart.dart';
import 'package:online_shope/Widget_Items/bg_widget.dart';
import 'package:online_shope/controller/auth_controller.dart';
import 'package:online_shope/src/consts.dart';
import 'package:flutter/material.dart';
import 'package:online_shope/src/lists.dart';

import '../auth/login_Screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return bgWidget(
        child: Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Edite profile
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.edit,
                    color: whiteColor,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Image.asset(
                    imgProfile2,
                    width: 100,
                    fit: BoxFit.cover,
                  ).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.widthBox,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Profile name"
                          .text
                          .color(Colors.white)
                          .fontFamily(semibold)
                          .make(),
                      "Description@ghgfh.dfg".text.color(Colors.white).make(),
                    ],
                  )),
                  OutlinedButton(
                    onPressed: ()  async {
                      await Get.put(AuthController()).signOutMethod(context);
                      Get.offAll(() => const loginScreen());

                    },
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                      color: Colors.white,
                    )),
                    child: login.text
                        .color(Colors.white)
                        .fontFamily(semibold)
                        .make(),
                  )
                ],
              ),
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCard(
                    count: "Description",
                    width: context.screenWidth / 3.4,
                    title: "In your cart"),
                detailsCard(
                    count: "Description",
                    width: context.screenWidth / 3.4,
                    title: "In your cart"),
                detailsCard(
                    count: "Description",
                    width: context.screenWidth / 3.4,
                    title: "In your cart"),
              ],
            ),
            //buttons section
            ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return const Divider(
                        color: lightGrey,
                      );
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Image.asset(
                          profileButtonsIcon[index],
                          width: 22.0,
                        ),
                        title: profileButtonsList[index]
                            .text
                            .fontFamily(bold)
                            .color(darkFontGrey)
                            .make(),
                      );
                    },
                    itemCount: profileButtonsList.length)
                .box
                .white
                .shadowSm
                .rounded
                .margin(const EdgeInsets.all(12.0))
                .padding(const EdgeInsets.symmetric(horizontal: 16.0))
                .make()
                .box
                .color(redColor)
                .make(),
          ],
        ),
      ),
    ));
  }
}
