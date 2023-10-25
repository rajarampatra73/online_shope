import 'package:flutter/cupertino.dart';
import 'package:online_shope/src/consts.dart';

Widget featureButtons({icons,String? texts, onClick}){
  return Row(

    children: [
      Image.asset(icons, width: 60, fit: BoxFit.fill),
      10.heightBox,
      texts!.text.fontFamily (semibold).color (darkFontGrey).make()

    ],).box.width(200).margin(const EdgeInsets.symmetric(horizontal: 4.0)).
  white.padding (const EdgeInsets.all(4)).roundedSM.outerShadowSm.make();
}

