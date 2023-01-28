import 'package:farmstore/view/cart/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/constant.dart';
import '../controller/bottom_nav_controller.dart';
import '../view/account/account_page.dart';
import '../view/explore/explore_page.dart';
import '../view/favorite/favorite_page.dart';
import '../view/shop/shop_page.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(
      builder: ((controller) => Scaffold(
            body: SafeArea(
              child: IndexedStack(
                index: controller.tabIndex,
                children: const [
                  ShopPage(),
                  ExplorePage(),
                  CartPage(),
                  FavoritePage(),
                  AccountPage(),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.green,
              elevation: 5.0,
              selectedFontSize: 13,
              unselectedItemColor: Colors.grey,
              backgroundColor: Colors.white,
              currentIndex: controller.tabIndex,
              onTap: controller.changeTab,
              items: [
                BottomNavigationBarItem(
                  icon: BottomNavIcon.shop,
                  label: 'Shop',
                ),
                BottomNavigationBarItem(
                  icon: BottomNavIcon.explore,
                  label: 'Explore',
                ),
                BottomNavigationBarItem(
                  icon: BottomNavIcon.cart,
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: BottomNavIcon.favorite,
                  label: 'favorite',
                ),
                BottomNavigationBarItem(
                  icon: BottomNavIcon.account,
                  label: 'Account',
                ),
              ],
            ),
          )),
    );
  }
}
