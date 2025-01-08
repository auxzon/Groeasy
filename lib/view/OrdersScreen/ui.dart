import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:auxzonfoodapp/common/elevted_button/ElevatedButton.dart';
import 'package:auxzonfoodapp/common/text/textdata.dart';
import 'package:auxzonfoodapp/common/utils/BorderRadius/borderradius.dart';
import 'package:auxzonfoodapp/common/utils/Color/Colordata.dart';
import 'package:auxzonfoodapp/main.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../common/Navigation/navigation.dart';
import '../../common/utils/fontsize/fontsize.dart';
import '../BottomSheet/BottomSheet.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Commonscaffold(
        appBar: AppBar(
          centerTitle: true,
          forceMaterialTransparency: true,
          automaticallyImplyLeading: false,
          title: Textwithfont(
            text: "Order Screen",
            fontSize: Fontsize.Fontsizelargeex,
            fontWeight: FontWeight.bold,
          ),
          leading: IconButton(
            onPressed: () {
              Navi.to(BottomNavigator(index: 3),
                  transition: Transition.leftToRightWithFade);
            },
            icon: const Icon(Icons.arrow_back_ios),
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
                        text: "Active",
                        color: ColorData.seconderycolor,
                        fontWeight: FontWeight.bold,
                        fontSize: Fontsize.Fontsizelarge,
                      ),
                    ),
                    Tab(
                      child: Textwithfont(
                        text: "History",
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
                    itemBuilder: (context, index) => Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: MyApp.width * .02),
                      height: MyApp.height * .3,
                      width: MyApp.width,
                      decoration: BoxDecoration(
                        color: ColorData.whitecolor,
                        boxShadow: [
                          BoxShadow(
                            color: ColorData.seconderycolor.withOpacity(.2),
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(
                          (MyApp.width * .02) * (MyApp.height * .002),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: MyApp.height * .18,
                                width: MyApp.height * .18,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: CachedNetworkImageProvider(
                                      "https://images.unsplash.com/photo-1517115358639-5720b8e02219?q=80&w=2074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    (MyApp.width * .02) * (MyApp.height * .002),
                                  ),
                                ),
                              ),
                              SizedBox(width: MyApp.width * .03),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Textwithfont(
                                      text: "Order no : #123456",
                                      fontSize: Fontsize.Fontsizelargeex,
                                      color: ColorData.seconderycolor,
                                      fontWeight: FontWeight.bold,
                                      maxliness: 1,
                                      textoverflow: TextOverflow.ellipsis,
                                    ),
                                    Textwithfont(
                                      text: "20 Nov | 1 am",
                                      fontSize: Fontsize.Fontsizemedium,
                                      color: ColorData.shadecolor,
                                      fontWeight: FontWeight.bold,
                                      maxliness: 1,
                                      textoverflow: TextOverflow.ellipsis,
                                    ),
                                    Textwithfont(
                                      text: "Details 1",
                                      fontSize: Fontsize.Fontsizelarge,
                                      color: ColorData.seconderycolor,
                                      maxliness: 1,
                                      textoverflow: TextOverflow.ellipsis,
                                    ),
                                    Textwithfont(
                                      text: "Details 2",
                                      fontSize: Fontsize.Fontsizelarge,
                                      color: ColorData.seconderycolor,
                                      maxliness: 1,
                                      textoverflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: CommonMaterialButton(
                                  onPressed: () {},
                                  borderRadius: BorderRadius.circular(Borderradius.buttonborderradius,
                                  ),
                                  color: ColorData.maincolor,
                                  width: MyApp.width * .3,
                                  child: Textwithfont(
                                    text: "Track",
                                    fontWeight: FontWeight.bold,
                                    color: ColorData.whitecolor,
                                    fontSize: Fontsize.Fontsizemedium,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MyApp.width * .02,
                              ),
                              Expanded(
                                child: CommonMaterialButton(
                                  side: const BorderSide(
                                    color: ColorData.maincolor,
                                    width: 1,
                                  ),
                                  onPressed: () {},
                                  borderRadius: BorderRadius.circular(
                                    (MyApp.width * .02) * (MyApp.height * .001),
                                  ),
                                  color: ColorData.whitecolor,
                                  width: MyApp.width * .3,
                                  child: Textwithfont(
                                    text: "Cancel",
                                    fontWeight: FontWeight.bold,
                                    color: ColorData.maincolor,
                                    fontSize: Fontsize.Fontsizemedium,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      height: MyApp.height * .008,
                    ),
                    itemCount: 4,
                  ),
                  ListView.separated(
                    padding: EdgeInsets.symmetric(
                      horizontal: MyApp.width * .02,
                      vertical: MyApp.height * .01,
                    ),
                    itemBuilder: (context, index) => SizedBox(
                      height: MyApp.height * .3,
                      width: MyApp.width,
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: MyApp.width * .02),
                            height: MyApp.height * .3,
                            width: MyApp.width,
                            decoration: BoxDecoration(
                              color: ColorData.whitecolor,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      ColorData.seconderycolor.withOpacity(.2),
                                  blurRadius: 2,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(
                                (MyApp.width * .02) * (MyApp.height * .002),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: MyApp.height * .18,
                                      width: MyApp.height * .18,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: CachedNetworkImageProvider(
                                            "https://images.unsplash.com/photo-1517115358639-5720b8e02219?q=80&w=2074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                          ),
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          (MyApp.width * .02) *
                                              (MyApp.height * .002),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: MyApp.width * .03),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Textwithfont(
                                            text: "Order no : #123456",
                                            fontSize: Fontsize.Fontsizelargeex,
                                            color: ColorData.seconderycolor,
                                            fontWeight: FontWeight.bold,
                                            maxliness: 1,
                                            textoverflow: TextOverflow.ellipsis,
                                          ),
                                          Textwithfont(
                                            text: "20 Nov | 1 am",
                                            fontSize: Fontsize.Fontsizemedium,
                                            color: ColorData.shadecolor,
                                            fontWeight: FontWeight.bold,
                                            maxliness: 1,
                                            textoverflow: TextOverflow.ellipsis,
                                          ),
                                          Textwithfont(
                                            text: "Details 1",
                                            fontSize: Fontsize.Fontsizelarge,
                                            color: ColorData.seconderycolor,
                                            maxliness: 1,
                                            textoverflow: TextOverflow.ellipsis,
                                          ),
                                          Textwithfont(
                                            text: "Details 2",
                                            fontSize: Fontsize.Fontsizelarge,
                                            color: ColorData.seconderycolor,
                                            maxliness: 1,
                                            textoverflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CommonMaterialButton(
                                        side: BorderSide(
                                          color: index.isEven?ColorData.maincolor:ColorData.maincolor.withOpacity(.5),
                                          width: 1,
                                        ),
                                        onPressed: index.isEven?() {
                                          if (kDebugMode) {
                                            print("clicked");
                                          }
                                        }:(){
                                          if (kDebugMode) {
                                            print("no action");
                                          }
                                        },
                                        borderRadius: BorderRadius.circular(
                                          (MyApp.width * .02) *
                                              (MyApp.height * .001),
                                        ),
                                        color: ColorData.whitecolor,
                                        width: MyApp.width * .3,
                                        child: Textwithfont(
                                          text: "Rate",
                                          fontWeight: FontWeight.bold,
                                          color: index.isEven?ColorData.maincolor:ColorData.maincolor.withOpacity(.5),
                                          fontSize: Fontsize.Fontsizemedium,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MyApp.width * .02,
                                    ),
                                    Expanded(
                                      child: CommonMaterialButton(
                                        side: const BorderSide(
                                          color: ColorData.maincolor,
                                          width: 1,
                                        ),
                                        onPressed: () {},
                                        borderRadius: BorderRadius.circular(
                                          (MyApp.width * .02) *
                                              (MyApp.height * .001),
                                        ),
                                        color: ColorData.whitecolor,
                                        width: MyApp.width * .3,
                                        child: Textwithfont(
                                          text: "Reorder",
                                          fontWeight: FontWeight.bold,
                                          color: ColorData.maincolor,
                                          fontSize: Fontsize.Fontsizemedium,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Textwithfont(
                              text: index.isEven?"Completed":"Canceled",
                              fontWeight: FontWeight.bold,
                              color: index.isEven?ColorData.greebuttoncolor:ColorData.cancelbuttoncolor,
                            ),
                          ),
                        ],
                      ),
                    ),
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
