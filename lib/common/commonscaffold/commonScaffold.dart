import 'package:auxzonfoodapp/common/text/textdata.dart';
import 'package:auxzonfoodapp/common/utils/Color/Colordata.dart';
import 'package:auxzonfoodapp/main.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../../controller/CommonScaffold/CommonScaffoldController.dart';

class Commonscaffold extends StatelessWidget {
  final Widget? body;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final FloatingActionButtonAnimator? floatingActionButtonAnimator;
  final List<Widget>? persistentFooterButtons;
  final Widget? drawer;
  final Widget? endDrawer;
  final Widget? bottomNavigationBar;
  final Widget? bottomSheet;
  final Color? backgroundColor;
  final bool? resizeToAvoidBottomInset;
  final bool extendBody;
  final bool extendBodyBehindAppBar;
  final bool primary;
  final DragStartBehavior drawerDragStartBehavior;
  final bool drawerEnableOpenDragGesture;
  final bool endDrawerEnableOpenDragGesture;
  final bool canPop;
  final PopInvokedWithResultCallback? canPopfun;
  final String? restorationId;
  final bool useSafeArea;

  Commonscaffold({
    super.key,
    this.body,
    this.appBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.persistentFooterButtons,
    this.drawer,
    this.endDrawer,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.primary = true,
    this.drawerDragStartBehavior = DragStartBehavior.start,
    this.drawerEnableOpenDragGesture = true,
    this.endDrawerEnableOpenDragGesture = true,
    this.canPop = false,
    this.canPopfun,
    this.restorationId,
    this.useSafeArea = false,
  });

  final connectivityController = Get.put(ConnectivityController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: appBar,
        body: connectivityController.isConnected.value
            ? (useSafeArea
            ? SafeArea(child: body ?? const SizedBox())
            : body ?? const SizedBox())
            : Container(
          height: MyApp.height,
          width: MyApp.width,
          decoration: const BoxDecoration(
            color: ColorData.whitecolor,
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage("images3/No connection-bro.png"),
            ),
          ),
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: MyApp.height*.04,),
              Container(
                height: MyApp.height * .1,
                width: MyApp.height * .1,
                decoration: const BoxDecoration(
                  color: ColorData.whitecolor,
                    image: DecorationImage(fit: BoxFit.cover,
                        image: AssetImage("images3/image1.png"))),
              ),
              const Spacer(),
              const Textwithfont(text: "No Connection",fontWeight: FontWeight.bold,color: ColorData.cancelbuttoncolor,fontSize: 25,),
              SizedBox(height: MyApp.height*.02,)
            ],
          ),
        ),
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
        floatingActionButtonAnimator: floatingActionButtonAnimator,
        persistentFooterButtons: persistentFooterButtons,
        drawer: drawer,
        endDrawer: endDrawer,
        bottomNavigationBar: bottomNavigationBar,
        bottomSheet: bottomSheet,
        backgroundColor: backgroundColor ?? const Color(0xFFFFFFFF),
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        extendBody: extendBody,
        extendBodyBehindAppBar: extendBodyBehindAppBar,
        primary: primary,
        drawerDragStartBehavior: drawerDragStartBehavior,
        drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
        endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
        restorationId: restorationId,
      );
    });
  }
}


