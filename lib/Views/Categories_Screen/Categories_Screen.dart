import 'package:get/get.dart';
import 'package:online_shope/Views/Categories_Screen/Categories_details.dart';
import 'package:online_shope/Widget_Items/bg_widget.dart';
import 'package:online_shope/src/consts.dart';
import 'package:flutter/material.dart';
import 'package:online_shope/src/lists.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: categories.text.white.fontFamily(bold).make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
            // physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              mainAxisExtent: 200,
            ),
            itemBuilder: (context, index) {
              return Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(categoryImages[index],
                      width: 200.0, height: 120.0, fit: BoxFit.cover),
                  20.heightBox,
                  categoriesList[index]
                      .text
                      .fontFamily(semibold)
                      .color(darkFontGrey)
                      .align(TextAlign.center)
                      .make(),
                ],
              )
                  .box
                  .white
                  .margin(const EdgeInsets.symmetric(horizontal: 4.0))
                  .rounded
                  .clip(Clip.antiAlias)
                  .outerShadowSm
                  // .padding(const EdgeInsets.all(12.0))
                  .make()
                  .onTap(() {
                Get.to(() => CategoriesDetails(
                      texts: categoriesList[index],
                    ));
              });
            }),
      ),
    ));
  }
}
