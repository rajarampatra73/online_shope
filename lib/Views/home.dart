import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:online_shope/Views/Cart_Screen/cart_screen.dart';
import 'package:online_shope/Views/Categories_Screen/Categories_Screen.dart';
import 'package:online_shope/Views/Profile_Screen/Profile_Screen.dart';
import 'package:online_shope/Views/home_screen/home_screen.dart';
import 'package:online_shope/controller/home_controller.dart';
import 'package:online_shope/src/consts.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navBarItems = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 26), label: home),
      BottomNavigationBarItem(
          icon: Image.asset(icCategories, width: 26), label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, width: 26), label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(icProfile, width: 26), label: account)
    ];

    // Nav bar items Screen body
    var navBarItemsBody = [
     const HomeScreen(),
      const CategoriesScreen(),
      const CartScreen(),
      const ProfileScreen(),

    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(
                () => Expanded(
              child:
              navBarItemsBody.elementAt(controller.currentNavIndex.value),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          backgroundColor: whiteColor,
          items: navBarItems,
        ),
      ),
    );
  }
}
