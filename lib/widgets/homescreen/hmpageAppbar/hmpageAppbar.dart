import 'package:auxzonfoodapp/common/Navigation/navigation.dart';
import 'package:auxzonfoodapp/common/utils/Color/Colordata.dart';
import 'package:auxzonfoodapp/main.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/text/textdata.dart';
import '../../../common/utils/fontsize/fontsize.dart';
import '../../../controller/Bottmnavigation/BottomNavgationBarController.dart';
import '../../../view/NotificationScreen/ui.dart';

class Hmpageappbar extends StatelessWidget {
  Hmpageappbar({
    super.key,
    required this.image,
    required this.name,
    required this.loc,
    required this.locfun,
  });

  final String image;
  final String name;
  final RxString loc;
  final VoidCallback locfun;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MyApp.height * .1,
      width: MyApp.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              final BottomNavigationBarController navcontoller = Get.find();
              navcontoller.navcontroller.jumpToTab(3);
            },
            child: CircleAvatar(
              backgroundColor: ColorData.bgcolor,
              backgroundImage: CachedNetworkImageProvider(image),
            ),
          ),
          SizedBox(width: MyApp.width * .02),
          SizedBox(
            height: MyApp.height * .2,
            width: MyApp.width * .4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Textwithfont(
                    text: "Hello , $name",
                    fontWeight: FontWeight.bold,
                    fontSize: Fontsize.Fontsizelarge,
                    maxliness: 1,
                    textoverflow: TextOverflow.ellipsis,
                  ),
                ),
                Expanded(
                  child: Obx(
                        () => loc.value.isEmpty
                        ? GestureDetector(
                        onTap: locfun,
                        child: const Textwithfont(text: "loading ...."))
                        : GestureDetector(
                      onTap: locfun,
                      child: Textwithfont(
                        maxliness: 1,
                        textoverflow: TextOverflow.ellipsis,
                        text: loc.value,
                        fontWeight: FontWeight.bold,
                        fontSize: Fontsize.Fontsizesmall,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navi.to(NotificationScreen(
                screen: 0,
              ));
            },
            child: const CircleAvatar(
              backgroundColor: ColorData.bgcolor,
              child: Icon(
                Icons.notifications,
                color: ColorData.maincolor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
