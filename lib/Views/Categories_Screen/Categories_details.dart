import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shope/Views/Categories_Screen/ItemDetails.dart';
import 'package:online_shope/src/consts.dart';

import '../../Widget_Items/bg_widget.dart';

class CategoriesDetails extends StatelessWidget {
  final String? texts;

  const CategoriesDetails({super.key, required this.texts});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: texts!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  6,
                  (index) => "null"
                      .text
                      .fontFamily(semibold)
                      .size(12.0)
                      .color(darkFontGrey)
                      .makeCentered()
                      .box
                      .white
                      .size(120, 60)
                      .rounded
                      .margin(const EdgeInsets.symmetric(horizontal: 4))
                      .make()),
            ),
          ),
          20.heightBox,
          // TODO: this is items
          Expanded(
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    mainAxisExtent: 250,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          imgP6, width: 200.0,
                          height:150.0 ,fit: BoxFit.cover,),

                        "Flutter eCommerce App ".text.fontFamily(semibold)
                            .color(darkFontGrey)
                            .make(),
                        10.heightBox,
                        "333".text.fontFamily(bold).size(16.0).color(
                            redColor).make(),

                      ],
                    ).box.white
                        .margin(
                        const EdgeInsets.symmetric(horizontal: 4.0))
                        .roundedSM.outerShadowSm
                        .padding(const EdgeInsets.all(12.0))
                        .make().onTap(() {
                          Get.to(()=> ItemDetails(title: texts,));
                    });

                  }))
        ]),
      ),
    ));
  }
}
