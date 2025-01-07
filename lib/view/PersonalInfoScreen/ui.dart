import 'package:auxzonfoodapp/common/Navigation/navigation.dart';
import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:auxzonfoodapp/common/text/textdata.dart';
import 'package:auxzonfoodapp/common/utils/BorderRadius/borderradius.dart';
import 'package:auxzonfoodapp/common/utils/Color/Colordata.dart';
import 'package:auxzonfoodapp/common/utils/Padding/cardinnerpadding.dart';
import 'package:auxzonfoodapp/common/utils/fontsize/fontsize.dart';
import 'package:auxzonfoodapp/main.dart';
import 'package:auxzonfoodapp/view/BottomSheet/BottomSheet.dart';
import 'package:auxzonfoodapp/view/EditProfileScreen/ui.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../NotificationScreen/ui.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Commonscaffold(
        useSafeArea: true,
        body: Center(
          child: ListView(
            children: [
              Container(
                width: MyApp.width,
                height: MyApp.height * .3,
                padding: EdgeInsets.symmetric(horizontal: MyApp.width * .02),
                decoration: const BoxDecoration(color: ColorData.maincolor),
                child: Column(
                  children: [
                    AppBar(
                      forceMaterialTransparency: true,
                      automaticallyImplyLeading: false,
                      centerTitle: true,
                      title: Textwithfont(
                        text: "Profile",
                        fontSize: Fontsize.Fontsizelargeex,
                        fontWeight: FontWeight.bold,
                        color: ColorData.whitecolor,
                      ),
                      leading: IconButton(
                        onPressed: () {
                          Navi.to(BottomNavigator(index: 3),
                              transition: Transition.leftToRightWithFade);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: ColorData.whitecolor,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.all(Innerpadding.CardInnerpadding),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            maxRadius: 50,
                            backgroundImage: CachedNetworkImageProvider(
                                "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                          ),
                          SizedBox(
                            width: MyApp.width * .02,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Textwithfont(
                                text: "Ram Karina",
                                fontSize: Fontsize.Fontsizelarge,
                                maxliness: 2,
                                textoverflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.bold,
                                color: ColorData.whitecolor,
                              ),
                              Textwithfont(
                                text: "ram@gmail.com",
                                fontSize: Fontsize.Fontsizemedium,
                                maxliness: 2,
                                textoverflow: TextOverflow.ellipsis,
                                color: ColorData.whitecolor,
                              ),
                            ],
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navi.to(EditProfileScreen());
                            },
                            child: const Icon(
                              Icons.edit,
                              color: ColorData.whitecolor,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              Container(
                  width: MyApp.width,
                  height: MyApp.height,
                  padding: EdgeInsets.symmetric(horizontal: MyApp.width * .05),
                  decoration: const BoxDecoration(color: ColorData.whitecolor),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MyApp.height * .03,
                      ),
                      Container(
                        padding:
                            EdgeInsets.all(Innerpadding.CardInnerpadding),
                        decoration: BoxDecoration(
                          color: ColorData.whitecolor,
                          boxShadow: [
                            BoxShadow(
                                color: ColorData.shadecolor,
                                offset: Offset(0, 1),
                                blurRadius: 2)
                          ],
                          borderRadius: BorderRadius.circular(
                              Borderradius.containerborderradius),
                        ),
                        width: MyApp.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Textwithfont(
                                  text: "No of Orders",
                                  fontWeight: FontWeight.bold,
                                  fontSize: Fontsize.Fontsizelarge,
                                ),
                                Spacer(),
                                Textwithfont(
                                  text: "20",
                                  fontSize: Fontsize.Fontsizelarge,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MyApp.height * .01,
                            ),
                            const Divider(),
                            SizedBox(
                              height: MyApp.height * .01,
                            ),
                            // Column(
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     Row(
                            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //       children: [
                            //         Textwithfont(
                            //           text: "Subscriptions",
                            //           fontWeight: FontWeight.bold,
                            //           fontSize: Fontsize.Fontsizelarge,
                            //         ),
                            //         Textwithfont(
                            //           text: "Active",
                            //           fontWeight: FontWeight.bold,
                            //           color: ColorData.greebuttoncolor,
                            //           fontSize: Fontsize.Fontsizelarge,
                            //         ),
                            //       ],
                            //     ),
                            //     Textwithfont(
                            //       text: "Milk | NewsPaper ",
                            //       fontSize: Fontsize.Fontsizemedium,
                            //     ),
                            //   ],
                            // ),
                            // SizedBox(
                            //   height: MyApp.height * .01,
                            // ),
                            // const Divider(),
                            SizedBox(
                              height: MyApp.height * .01,
                            ),
                            Row(
                              children: [
                                Textwithfont(
                                  text: "Log Out",
                                  fontWeight: FontWeight.bold,
                                  fontSize: Fontsize.Fontsizelarge,
                                  color: ColorData.cancelbuttoncolor,
                                ),
                                Spacer(),
                                Icon(
                                  Icons.logout,
                                  color: ColorData.cancelbuttoncolor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ));
  }
}
