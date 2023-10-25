import 'package:flutter/cupertino.dart';
import 'package:online_shope/src/consts.dart';

Widget detailsCard({
  width,
  String? count,
  String? title,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!.text.fontFamily(semibold).size(16.0).color(darkFontGrey).make(),
      5.heightBox,
      title!.text.color(darkFontGrey).make(),
    ],
  )
      .box
      .white
      .rounded
      .width(width)
      .height(80.0)
      .padding(const EdgeInsets.all(4.0))
      .make();
}
