import 'package:auxzonfoodapp/common/utils/Color/Colordata.dart';
import 'package:auxzonfoodapp/view/CartScreen/ui.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../view/CategoryScreen/ui.dart';
import '../../view/ProfileScreen/ui.dart';
import '../../view/homeScreen/ui.dart';

class BottomNavigationBarController extends GetxController {
  BottomNavigationBarController({required this.index});
  final int index;
  late PersistentTabController navcontroller;

  List<Widget> screens = [
    const HomeScreen(),
    const CartScreen(),
    const CategoryScreen(),
    const ProfileScreen(),
  ];

  List<PersistentBottomNavBarItem> navItems = [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.home),
      title: ("Home"),
      activeColorPrimary: ColorData.maincolor,
      inactiveColorPrimary:ColorData.shadecolor,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.local_grocery_store),
      title: ("Cart"),
      activeColorPrimary: ColorData.maincolor,
      inactiveColorPrimary:ColorData.shadecolor,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.shopping_bag),
      title: ("Category"),
      activeColorPrimary: ColorData.maincolor,
      inactiveColorPrimary:ColorData.shadecolor,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.person),
      title: ("Profile"),
      activeColorPrimary: ColorData.maincolor,
      inactiveColorPrimary:ColorData.shadecolor,
    ),
  ];
  // hide bottom sheet

  var hidebtmsheet = true.obs;
  HideBtmSheet(){
    hidebtmsheet.value = false;
  }
  @override
  void onInit() {
    navcontroller = PersistentTabController(initialIndex: index);
    hidebtmsheet.value = true;
    super.onInit();
  }
  DateTime? lastBackPressTime;

  Future<bool> handleBackPress() async {
    DateTime now = DateTime.now();
    if (lastBackPressTime == null ||
        now.difference(lastBackPressTime!) > const Duration(seconds: 2)) {
      lastBackPressTime = now;
      Fluttertoast.showToast(
        msg: "Tap once again to exit",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.black,
        textColor: Colors.white,
      );
      return false; // Prevent exiting
    }
    return true; // Allow exiting
  }
}
