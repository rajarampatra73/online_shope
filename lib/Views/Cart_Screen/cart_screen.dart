

import 'package:get/get.dart';
import 'package:online_shope/src/consts.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: "Cart is Empty!".text.size(25.0)
          .color(darkFontGrey)
          .fontFamily(semibold)
          .makeCentered(),
    );
  }
}
