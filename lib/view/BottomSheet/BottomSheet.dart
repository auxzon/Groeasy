import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import '../../controller/Bottmnavigation/BottomNavgationBarController.dart';

class BottomNavigator extends StatelessWidget {
  BottomNavigator({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(BottomNavigationBarController(index: index));
    print("index in btm sheet ${index}");
    return Commonscaffold(
      canPopfun: (didPop, result) async {
        bool shouldExit = await controller.handleBackPress();
        if (shouldExit) {
          SystemNavigator.pop(); // Exit the app
        }
      },
      canPop: false,
      useSafeArea: true,
      body: Obx(() => PersistentTabView(
        context,
        controller: controller.navcontroller,
        screens: controller.screens,
        items: controller.navItems,
        confineToSafeArea: true,
        backgroundColor: Colors.white,
        isVisible: controller.hidebtmsheet.value,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarHeight: kBottomNavigationBarHeight,
        navBarStyle: NavBarStyle.style1,
      ),),
    );
  }
}
