import 'package:get/instance_manager.dart';

import '../controller/account_controller.dart';
import '../controller/bottom_nav_controller.dart';
import '../controller/cart_controller.dart';
import '../controller/explore_controller.dart';
import '../controller/favorite_controller.dart';
import '../controller/shop_controller.dart';

class BottomNavBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavController>(() => BottomNavController());
    Get.lazyPut<ShopController>(() => ShopController());
    Get.lazyPut<ExploreController>(() => ExploreController());
    Get.lazyPut<CartController>(() => CartController());
    Get.lazyPut<FavoriteController>(() => FavoriteController());
    Get.lazyPut<AccountController>(() => AccountController());
  }
}
