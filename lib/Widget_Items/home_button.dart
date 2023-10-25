import 'package:flutter/material.dart';
import '../src/consts.dart';
Widget homeButtons({width, height, icons,String? texts, onClick}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(icons, width: 26),
      10.heightBox,
        texts!.text.fontFamily (semibold).color (darkFontGrey).make()

      ],).box.rounded.size(width, height).white.make();
}
