import 'package:get/get.dart';
import 'package:online_shope/Views/home_screen/components/featured_btn.dart';
import 'package:online_shope/Widget_Items/home_button.dart';
import 'package:online_shope/src/lists.dart';
import 'package:online_shope/src/consts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      padding: const EdgeInsets.all(12.0),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60.0,
              alignment: Alignment.center,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    filled: true,
                    border: InputBorder.none,
                    fillColor: whiteColor,
                    hintText: searchAnything,
                    hintStyle: TextStyle(
                      color: textfieldGrey,
                    )),
              ),
            ),
            10.heightBox,
//TODO: scroll with saveArea code
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),

//TODO: scroll with saveArea code end here
                child: Column(
                  children: [
                    // slider (swiper)
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150.0,
                        enlargeCenterPage: true,
                        itemCount: sliderList.length,
                        itemBuilder: (context, index) {
                          return Image
                              .asset(
                            sliderList[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(
                              const EdgeInsets.symmetric(horizontal: 8.0))
                              .make();
                        }),
                    10.heightBox,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          2,
                              (index) =>
                              homeButtons(
                                height: context.screenHeight * 0.15,
                                width: context.screenWidth / 2.5,
                                icons: index == 0 ? icTodaysDeal : icFlashDeal,
                                texts: index == 0 ? todayDeal : flashSale,
                                onClick: () {},
                              )),
                    ),
                    10.heightBox,
                    // 2nd slider
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150.0,
                        enlargeCenterPage: true,
                        itemCount: sliderList.length,
                        itemBuilder: (context, index) {
                          return Image
                              .asset(
                            secondSliderList[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(
                              const EdgeInsets.symmetric(horizontal: 8.0))
                              .make();
                        }),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          3,
                              (index) =>
                              homeButtons(
                                height: context.screenHeight * 0.15,
                                width: context.screenWidth / 3.5,
                                icons: index == 0
                                    ? icTopCategories
                                    : index == 1
                                    ? icBrands
                                    : icTopSeller,
                                texts: index == 0
                                    ? topCategories
                                    : index == 1
                                    ? brand
                                    : topSellers,
                                onClick: () {},
                              )),
                    ),
                    20.heightBox,
                    // categories
                    Align(
                        alignment: Alignment.centerLeft,
                        child: featuredCategories.text
                            .color(darkFontGrey)
                            .size(18.0)
                            .fontFamily(semibold)
                            .make()),
                    20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            3,
                                (index) =>
                                Column(
                                  children: [
                                    featureButtons(
                                      texts: freaturedTitles1[index],
                                      icons: featuredImages1[index],
                                      onClick: () {},
                                    ),
                                    10.heightBox,
                                    featureButtons(
                                      texts: freaturedTitles2[index],
                                      icons: featuredImages2[index],
                                      onClick: () {},
                                    ),
                                  ],
                                )).toList(),
                      ),
                    ),
                    20.heightBox,
                    // TODO: featured product
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: const BoxDecoration(
                        color: redColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featuredProduct.text.white.fontFamily(bold)
                              .size(18)
                              .make(),
                          10.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(6, (index) =>
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Image.asset(imgP1, width: 130.0,
                                        fit: BoxFit.cover,),
                                      10.heightBox,
                                      "ee".text.fontFamily(semibold).color(
                                          darkFontGrey).make(),
                                      10.heightBox,
                                      "333".text.fontFamily(bold)
                                          .size(16.0)
                                          .color(redColor)
                                          .make(),

                                    ],
                                  ).box.white
                                      .margin(const EdgeInsets.symmetric(
                                      horizontal: 4.0))
                                      .roundedSM
                                      .padding(const EdgeInsets.all(8.0))
                                      .make(),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    20.heightBox,
                    // 3nd slider
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150.0,
                        enlargeCenterPage: true,
                        itemCount: sliderList.length,
                        itemBuilder: (context, index) {
                          return Image
                              .asset(
                            secondSliderList[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(
                              const EdgeInsets.symmetric(horizontal: 8.0))
                              .make();
                        }),
                    //all product se
                    20.heightBox,
                    GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 6,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          mainAxisExtent: 300,
                        ),
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                imgP6, width: 200.0, height:200.0 ,fit: BoxFit.cover,),

                             const Spacer(),
                              "ee".text.fontFamily(semibold)
                                  .color(darkFontGrey)
                                  .make(),
                              10.heightBox,
                              "333".text.fontFamily(bold).size(16.0).color(
                                  redColor).make(),

                            ],
                          ).box.white
                              .margin(
                              const EdgeInsets.symmetric(horizontal: 4.0))
                              .roundedSM
                              .padding(const EdgeInsets.all(12.0))
                              .make();

                        })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
