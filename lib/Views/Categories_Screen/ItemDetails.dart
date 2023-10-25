import 'package:flutter/material.dart';
import 'package:online_shope/Widget_Items/o_button.dart';
import 'package:online_shope/src/consts.dart';
import '../../src/lists.dart';

class ItemDetails extends StatelessWidget {
  final String? title;

  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: darkFontGrey,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite, color: darkFontGrey)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // slider
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: false,
                        height: 350.0,
                        enlargeCenterPage: true,
                        itemCount: sliderList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            secondSliderList[index],
                            width: double.infinity,
                            fit: BoxFit.cover,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(
                                  const EdgeInsets.symmetric(horizontal: 8.0))
                              .make();
                        }),
                    10.heightBox,
                    title!.text
                        .size(16.0)
                        .color(darkFontGrey)
                        .fontFamily(bold)
                        .make(),
                    10.heightBox,
                    VxRating(
                      onRatingUpdate: (value) {},
                      normalColor: textfieldGrey,
                      selectionColor: golden,
                      size: 25,
                      count: 5,
                      stepInt: true,
                    ),
                    10.heightBox,
                    "RS.4576"
                        .text
                        .size(18.0)
                        .color(redColor)
                        .fontFamily(bold)
                        .make(),
                    10.heightBox,
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              "rajat hdv "
                                  .text
                                  .size(18.0)
                                  .white
                                  .fontFamily(semibold)
                                  .make(),
                              5.heightBox,
                              "rajat tes hdv "
                                  .text
                                  .size(16.0)
                                  .color(darkFontGrey)
                                  .fontFamily(semibold)
                                  .make(),
                              5.heightBox,
                            ])),
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.message_rounded,
                            color: darkFontGrey,
                          ),
                        )
                      ],
                    )
                        .box
                        .height(60.0)
                        .padding(const EdgeInsets.symmetric(horizontal: 16))
                        .color(textfieldGrey)
                        .make(),
                    // Colors
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 100.0,
                              child: "Color: "
                                  .text
                                  .color(textfieldGrey)
                                  .fontFamily(bold)
                                  .make(),
                            ),
                            Row(
                              children: List.generate(
                                3,
                                (index) => VxBox()
                                    .size(40.0, 40.0)
                                    .color(Vx.randomPrimaryColor)
                                    .margin(const EdgeInsets.symmetric(
                                        horizontal: 6.0))
                                    .roundedFull
                                    .make(),
                              ),
                            )
                          ],
                        ).box.padding(const EdgeInsets.all(8.0)).make(),
                        //TODO: quantity add or remove
                        Row(
                          children: [
                            SizedBox(
                              width: 100.0,
                              child: "Quantity: "
                                  .text
                                  .color(textfieldGrey)
                                  .fontFamily(bold)
                                  .make(),
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.remove)),
                                "0"
                                    .text
                                    .size(16.0)
                                    .color(darkFontGrey)
                                    .fontFamily(bold)
                                    .make(),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add)),
                                "0 available"
                                    .text
                                    .size(16.0)
                                    .color(darkFontGrey)
                                    .fontFamily(bold)
                                    .make(),
                              ],
                            ),
                          ],
                        ).box.padding(const EdgeInsets.all(8.0)).make(),
                        //
                        Row(
                          children: [
                            SizedBox(
                              width: 100.0,
                              child: "Total: "
                                  .text
                                  .color(textfieldGrey)
                                  .fontFamily(bold)
                                  .make(),
                            ),
                            "00.000"
                                .text
                                .size(16.0)
                                .color(redColor)
                                .fontFamily(bold)
                                .make(),
                          ],
                        ).box.padding(const EdgeInsets.all(8.0)).make(),
                      ],
                    ).box.white.shadowSm.make(),
                    10.heightBox,
                    "Description"
                        .text
                        .color(darkFontGrey)
                        .fontFamily(semibold)
                        .make(),
                    10.heightBox,
                    "Description Description DescriptionD escriptionDe scription DescriptionDe scription Description Description "
                        .text
                        .color(darkFontGrey)
                        .fontFamily(semibold)
                        .make(),
                    10.heightBox,

                    ListView(
                      shrinkWrap: true,
                      children: List.generate(
                          itemDetailButtonslist.length,
                          (index) => ListTile(
                                trailing: const Icon(Icons.arrow_forward),
                                title: itemDetailButtonslist[index]
                                    .text
                                    .color(darkFontGrey)
                                    .fontFamily(bold)
                                    .make(),
                              )),
                    ),
                    20.heightBox,

                    productsYouMayLike.text
                        .size(16.0)
                        .color(darkFontGrey)
                        .fontFamily(bold)
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
                    ),

                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: oButton(
              color: redColor,
              textColor: whiteColor,
              texts: "add to cart",
              onClick: () {},
            ),
          ),
        ],
      ),
    );
  }
}
