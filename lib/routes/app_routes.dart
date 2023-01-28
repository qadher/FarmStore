import 'package:get/get_navigation/src/routes/get_route.dart';

import '../bindings/bottom_nav_bindings.dart';
import '../bottomNav/bottom_nav.dart';

class AppRoutes{
  //create routes GetPage
 static  List<GetPage<dynamic>> routes = [
    GetPage(
      name: '/',
      page: () => BottomNav(),
      binding: BottomNavBindings(),
    ),
    // GetPage(
    //   name: '/home',
    //   page: () => HomePage(),
    //   binding: Bindings.defaultBindings,
    // ),
    // GetPage(
    //   name: '/cart',
    //   page: () => CartPage(),
    //   binding: Bindings.defaultBindings,
    // ),
    // GetPage(
    //   name: '/explore',
    //   page: () => ExplorePage(),
    //   binding: Bindings.defaultBindings,
    // ),
    // GetPage(
    //   name: '/favorite',
    //   page: () => FavoritePage(),
    //   binding: Bindings.defaultBindings,
    // ),
    // GetPage(
    //   name: '/shop',
    //   page: () => ShopPage(),
    //   binding: Bindings.defaultBindings,
    // ),

  ];
}