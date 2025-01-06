import 'package:auxzonfoodapp/common/Navigation/navigation.dart';
import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:auxzonfoodapp/common/text/textdata.dart';
import 'package:auxzonfoodapp/common/utils/fontsize/fontsize.dart';
import 'package:auxzonfoodapp/controller/Subscriptionplan/SubscriptionplanController.dart';
import 'package:auxzonfoodapp/main.dart';
import 'package:auxzonfoodapp/view/BottomSheet/BottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tap_to_expand/tap_to_expand.dart';
import '../../common/elevted_button/ElevatedButton.dart';
import '../../common/utils/BorderRadius/borderradius.dart';
import '../../common/utils/Color/Colordata.dart';

class SubscriptionPlan extends StatelessWidget {
  const SubscriptionPlan({super.key});

  @override
  Widget build(BuildContext context) {
    SubscriptionplanController subscriptionplanController = Get.put(SubscriptionplanController());
    return DefaultTabController(
      length: 2,
      child: Commonscaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navi.to(BottomNavigator(index: 3),
                  transition: Transition.leftToRightWithFade);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          automaticallyImplyLeading: false,
          forceMaterialTransparency: true,
          title: Textwithfont(
            text: "Subscription Plan",
            fontSize: Fontsize.Fontsizelargeex,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: ColorData.maincolor.withOpacity(.5),
                  borderRadius: BorderRadius.circular(
                      (MyApp.width * .02) * (MyApp.height * .002)),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: TabBar(
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: ShapeDecoration(
                    color: ColorData.whitecolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          (MyApp.width * .02) * (MyApp.height * .002)),
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Textwithfont(
                        text: "Current",
                        color: ColorData.seconderycolor,
                        fontWeight: FontWeight.bold,
                        fontSize: Fontsize.Fontsizelarge,
                      ),
                    ),
                    Tab(
                      child: Textwithfont(
                        text: "Available",
                        color: ColorData.seconderycolor,
                        fontWeight: FontWeight.bold,
                        fontSize: Fontsize.Fontsizelarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.separated(
                    padding: EdgeInsets.symmetric(
                      horizontal: MyApp.width * .02,
                      vertical: MyApp.height * .01,
                    ),
                    itemBuilder: (context, index) => TapToExpand(
                        iconColor: ColorData.shadecolor,
                        backgroundcolor: ColorData.whitecolor,
                        title: Textwithfont(
                          text: "Rs. 100.00",
                          fontSize: Fontsize.Fontsizelargeex,
                          color: ColorData.seconderycolor,
                          fontWeight: FontWeight.bold,
                          maxliness: 1,
                          textoverflow: TextOverflow.ellipsis,
                        ),
                        content: Column(
                          children: [
                            Divider(),
                            Textwithfont(
                              text: "Available Features",
                              fontSize: Fontsize.Fontsizelarge,
                              color: ColorData.seconderycolor,
                            ),
                            Textwithfont(
                              text: "Milk | NewsPaper ",
                              fontSize: Fontsize.Fontsizemedium,
                              color: ColorData.shadecolor,
                              fontWeight: FontWeight.bold,
                              maxliness: 1,
                              textoverflow: TextOverflow.ellipsis,
                            ),
                            Textwithfont(
                              text: "24 days more.",
                              fontSize: Fontsize.Fontsizemedium,
                              color: ColorData.maincolor,
                              fontWeight: FontWeight.bold,
                              maxliness: 1,
                              textoverflow: TextOverflow.ellipsis,
                            ),
                          ],
                        )),
                    separatorBuilder: (context, index) => SizedBox(
                      height: MyApp.height * .008,
                    ),
                    itemCount: 1,
                  ),
                  ListView.separated(
                    padding: EdgeInsets.symmetric(
                      horizontal: MyApp.width * .02,
                      vertical: MyApp.height * .01,
                    ),
                    itemBuilder: (context, index) => TapToExpand(
                        iconColor: ColorData.shadecolor,
                        backgroundcolor: ColorData.whitecolor,
                        title: Textwithfont(
                          text: "Rs. ${index + 1}00.00",
                          fontSize: Fontsize.Fontsizelargeex,
                          color: ColorData.seconderycolor,
                          fontWeight: FontWeight.bold,
                          maxliness: 1,
                          textoverflow: TextOverflow.ellipsis,
                        ),
                        content: Column(
                          children: [
                            const Divider(),
                            Textwithfont(
                              text: "Available Features",
                              fontSize: Fontsize.Fontsizelarge,
                              color: ColorData.seconderycolor,
                            ),
                            Textwithfont(
                              text: "Milk | NewsPaper ",
                              fontSize: Fontsize.Fontsizemedium,
                              color: ColorData.shadecolor,
                              fontWeight: FontWeight.bold,
                              maxliness: 1,
                              textoverflow: TextOverflow.ellipsis,
                            ),
                            Textwithfont(
                              text: "${index + 4}0 days.",
                              fontSize: Fontsize.Fontsizemedium,
                              color: ColorData.maincolor,
                              fontWeight: FontWeight.bold,
                              maxliness: 1,
                              textoverflow: TextOverflow.ellipsis,
                            ),
                            CommonMaterialButton(
                              padding: EdgeInsets.symmetric(
                                  horizontal: MyApp.width * .1),
                              borderRadius: BorderRadius.circular(
                                  (MyApp.width * .007) * (MyApp.width * .007)),
                              color: ColorData.maincolor,
                              onPressed: () {
                                showModalBottomSheet(
                                  backgroundColor: ColorData.whitecolor,
                                  context: context,
                                  isScrollControlled: true,
                                  builder: (context) => Container(
                                    width: MyApp.width,
                                    height: MyApp.height * .3,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: MyApp.width * .08,
                                        vertical: MyApp.height * .02),
                                    child: Column(
                                      crossAxisAlignment:CrossAxisAlignment.start,
                                      children: [
                                        Textwithfont(
                                          text: "Subscription Plan Details",
                                          fontWeight: FontWeight.bold,
                                          fontSize: Fontsize.Fontsizelarge,
                                          color: ColorData.seconderycolor,
                                        ),
                                        SizedBox(height: MyApp.height * 0.02),
                                        Textwithfont(
                                          text: "Plan: Rs. ${index + 1}00.00",
                                          fontSize: Fontsize.Fontsizemedium,
                                          color: ColorData.shadecolor,
                                        ),
                                        Textwithfont(
                                          text: "Duration: ${index + 4}0 days",
                                          fontSize: Fontsize.Fontsizemedium,
                                          color: ColorData.shadecolor,
                                        ),
                                        SizedBox(height: MyApp.height * 0.02),
                                        CommonMaterialButton(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: MyApp.width * .1),
                                          borderRadius: BorderRadius.circular(
                                              (MyApp.width * .007) *
                                                  (MyApp.width * .007)),
                                          color: ColorData.maincolor,
                                          onPressed: () {
                                            subscriptionplanController.startTransaction(context);
                                          },
                                          child: Textwithfont(
                                            text: "Subscribe",
                                            fontWeight: FontWeight.bold,
                                            color: ColorData.whitecolor,
                                            fontSize: Fontsize.Fontsizemedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              child: Textwithfont(
                                text: "Get Plan",
                                fontWeight: FontWeight.bold,
                                color: ColorData.whitecolor,
                                fontSize: Fontsize.Fontsizemedium,
                              ),
                            )
                          ],
                        )),
                    separatorBuilder: (context, index) => SizedBox(
                      height: MyApp.height * .008,
                    ),
                    itemCount: 4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
