import 'package:flutter/material.dart';
import 'package:online_shope/src/consts.dart';

Widget oButton ({onClick, color,textColor,String? texts}){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: color,
      padding: const EdgeInsets.all(12.0),
    ),
    onPressed: onClick,
      child: texts!.text.color(textColor).fontFamily(bold).make(),
  );
}