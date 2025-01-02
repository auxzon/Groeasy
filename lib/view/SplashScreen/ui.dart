import 'package:auxzonfoodapp/controller/SplashScreen/SplashScreenController.dart';
import 'package:auxzonfoodapp/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/commonscaffold/commonScaffold.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SplashScreenController());
    return Commonscaffold(
      body: Center(
        child: Image.asset(
          "images3/image1.png",
          height: MyApp.height * .3,
          width: MyApp.height * .3,
        ),
      ),
    );
  }
}
