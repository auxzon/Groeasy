import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:auxzonfoodapp/common/utils/Color/Colordata.dart';
import 'package:auxzonfoodapp/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:tap_to_expand/tap_to_expand.dart';

import '../../common/Navigation/navigation.dart';
import '../../common/text/textdata.dart';
import '../../common/utils/fontsize/fontsize.dart';
import '../BottomSheet/BottomSheet.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key, this.screen});

  int? screen;

  @override
  Widget build(BuildContext context) {
    return Commonscaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navi.to(BottomNavigator(index: screen ?? 0),
                transition: Transition.leftToRightWithFade);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        title: Textwithfont(
          text: "Notifications",
          fontSize: Fontsize.Fontsizelargeex,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            separatorBuilder: (context, index) => SizedBox(
                  height: MyApp.height * .008,
                ),
            itemCount: 15,
            padding: EdgeInsets.symmetric(
                horizontal: (MyApp.width * .01) * (MyApp.height * .002)),
            itemBuilder: (context, index) => TapToExpand(

                  iconColor: ColorData.shadecolor,
                  backgroundcolor: ColorData.whitecolor,
                  title: Textwithfont(
                    text: "New Site Visit Added",
                    fontWeight: FontWeight.bold,
                    fontSize: Fontsize.Fontsizemedium,
                    maxliness: 1,
                    textoverflow: TextOverflow.ellipsis,
                  ),
                  content: Textwithfont(
                    text:
                        "🌟 Exciting News! A new site has been added to our list of must-visit destinations! 🗺️ Explore and enjoy this latest addition. Check it out now!",
                    fontSize: Fontsize.Fontsizemedium,
                    maxliness: 2,
                    textoverflow: TextOverflow.ellipsis,
                  ),
                )
            //     Container(
            //   decoration: const BoxDecoration(
            //       border: Border(
            //           bottom: BorderSide(color: ColorData.shadecolor, width: 1))),
            //   child: ListTile(
            //     leading: Icon(Icons.history),
            //     title: Textwithfont(
            //       text: "New Site Visit Added",
            //       fontWeight: FontWeight.bold,
            //       fontSize: Fontsize.Fontsizemedium,
            //       maxliness: 1,
            //       textoverflow: TextOverflow.ellipsis,
            //     ),
            //     subtitle: Textwithfont(
            //       text:
            //           "🌟 Exciting News! A new site has been added to our list of must-visit destinations! 🗺️ Explore and enjoy this latest addition. Check it out now!",
            //       fontSize: Fontsize.Fontsizemedium,
            //       maxliness: 2,
            //       textoverflow: TextOverflow.ellipsis,
            //     ),
            //   ),
            // ),
            ),
      ),
    );
  }
}
