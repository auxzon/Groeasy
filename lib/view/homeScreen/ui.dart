import 'package:auxzonfoodapp/common/Navigation/navigation.dart';
import 'package:auxzonfoodapp/common/common_textfield/common_textfield.dart';
import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:auxzonfoodapp/common/text/textdata.dart';
import 'package:auxzonfoodapp/common/utils/BorderRadius/borderradius.dart';
import 'package:auxzonfoodapp/common/utils/Color/Colordata.dart';
import 'package:auxzonfoodapp/common/utils/Padding/cardinnerpadding.dart';
import 'package:auxzonfoodapp/common/utils/fontsize/fontsize.dart';
import 'package:auxzonfoodapp/main.dart';
import 'package:auxzonfoodapp/view/NotificationScreen/ui.dart';
import 'package:auxzonfoodapp/view/PopularSeeAll/ui.dart';
import 'package:auxzonfoodapp/view/ProducDetailsScreen/ui.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/Bottmnavigation/BottomNavgationBarController.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Commonscaffold(
      canPop: false,
      useSafeArea: true,
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: MyApp.width * .02),
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: MyApp.height * .1,
              width: MyApp.width,
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // SizedBox(width: MyApp.width*.02,),
                  GestureDetector(
                    onTap: () {
                      final BottomNavigationBarController navcontoller =
                          Get.find();
                      navcontoller.navcontroller.jumpToTab(3);
                    },
                    child: const CircleAvatar(
                      backgroundColor: ColorData.bgcolor,
                      backgroundImage: CachedNetworkImageProvider(
                          "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                    ),
                  ),
                  SizedBox(
                    width: MyApp.width * .02,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Textwithfont(
                        text: "Hello , Ram",
                        fontWeight: FontWeight.bold,
                        fontSize: Fontsize.Fontsizelarge,
                      ),
                      Textwithfont(
                        text: "kochi, palarivattam",
                        fontWeight: FontWeight.bold,
                        fontSize: Fontsize.Fontsizesmall,
                      ),
                    ],
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
                  // SizedBox(width: MyApp.width*.02,),
                ],
              ),
            ),
            SizedBox(
              height: MyApp.height * .02,
            ),
            SizedBox(
              // color: Colors.red,
              height: MyApp.height * .1,
              width: MyApp.width,
              child: Row(
                children: [
                  const Expanded(
                      flex: 6,
                      child: CommonTextField(
                        prefixIcon: Icon(
                          Icons.search,
                          color: ColorData.maincolor,
                        ),
                        hintText: "Search your needed",
                      )),
                  SizedBox(
                    width: MyApp.width * .02,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MyApp.height * .070,
                      width: MyApp.height * .070,
                      decoration: BoxDecoration(
                          color: ColorData.maincolor,
                          borderRadius: BorderRadius.circular(
                              Borderradius.buttonborderradius)),
                      child: const Icon(
                        Icons.arrow_forward_outlined,
                        color: ColorData.whitecolor,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MyApp.height * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Textwithfont(
                  text: "Categories",
                  fontWeight: FontWeight.bold,
                  fontSize: Fontsize.Fontsizelarge,
                ),
                GestureDetector(
                  onTap: () {
                    final BottomNavigationBarController navcontoller =
                        Get.find();
                    navcontoller.navcontroller.jumpToTab(2);
                  },
                  child: Textwithfont(
                    text: "See All",
                    fontWeight: FontWeight.bold,
                    fontSize: Fontsize.Fontsizemedium,
                    color: ColorData.maincolor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MyApp.height * .02,
            ),
            SizedBox(
              height: MyApp.height * .18,
              width: MyApp.width,
              // color: Colors.red,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navi.to(PopularSeeAll(title:'Meat Products',index: 0,));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: (MyApp.height * .006) * (MyApp.width * .006)),
                    child: Container(
                      height: MyApp.height * .13,
                      width: MyApp.height * .13,
                      padding: EdgeInsets.symmetric(
                          vertical: MyApp.height * .01,
                          horizontal: MyApp.width * .009),
                      decoration: BoxDecoration(
                          // color: Colors.green,
                          borderRadius: BorderRadius.circular(
                              Borderradius.containerborderradius),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(
                                  "https://img.freepik.com/free-photo/raw-meat-table_23-2150857912.jpg?t=st=1735558226~exp=1735561826~hmac=6240bc8c2fff05ba5882b276c6a379d1f518696c7955a2af8c61b3eb431f2975&w=1380"))),
                      child: const Align(
                        alignment: Alignment.bottomCenter,
                        child: Textwithfont(
                          textAlign: TextAlign.center,
                          text: "Meat Products",
                          fontWeight: FontWeight.bold,
                          color: ColorData.whitecolor,
                          maxliness: 2,
                          textoverflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MyApp.height * .02,
            ),
            Container(
              height: MyApp.height * .25,
              width: MyApp.width,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                          "https://img.freepik.com/free-vector/grocery-store-sale-banner-template_23-2151089846.jpg?t=st=1735554013~exp=1735557613~hmac=6a45fd96e235470b1f68ebb3813f2126a486cde1d3f0be145db0e2de7e618c89&w=1800")),
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(MyApp.height * .005)),
            ),
            SizedBox(
              height: MyApp.height * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Textwithfont(
                  text: "Popular Groceries",
                  fontWeight: FontWeight.bold,
                  fontSize: Fontsize.Fontsizelarge,
                ),
                GestureDetector(
                  onTap: () {
                    Navi.to(PopularSeeAll(title:"Popular Groceries",index: 0,));
                  },
                  child: Textwithfont(
                    text: "See All",
                    fontWeight: FontWeight.bold,
                    fontSize: Fontsize.Fontsizemedium,
                    color: ColorData.maincolor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MyApp.height * .02,
            ),
            /// filter button
            Container(
              width: MyApp.width,
              height: MyApp.height * 0.05,
              decoration: const BoxDecoration(
                color: ColorData.whitecolor,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildFilterButton('Lunch', MyApp.height, MyApp.width,
                      icon: Icons.arrow_drop_down),
                  SizedBox(width: MyApp.width * 0.02),
                  _buildFilterButton('Nearest', MyApp.height, MyApp.width,
                      isSelected: true),
                  SizedBox(width: MyApp.width * 0.02),
                  _buildFilterButton('Great Offers', MyApp.height, MyApp.width,
                      isSelected: true),
                  SizedBox(width: MyApp.width * 0.02),
                  _buildFilterButton('Ratings 4+', MyApp.height, MyApp.width,
                      icon: Icons.arrow_drop_down),
                ],
              ),
            ),
            SizedBox(
              height: MyApp.height * .02,
            ),
            ///grid category
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: MyApp.height * 0.03,
                crossAxisSpacing: MyApp.width * 0.06,
                childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navi.to(const ProductDetalsScreen());
                },
                child: Container(
                  width: MyApp.width,
                  height: MyApp.height * .4,
                  decoration: BoxDecoration(
                      color: ColorData.whitecolor,
                      borderRadius: BorderRadius.circular(
                          Borderradius.containerborderradius),
                      boxShadow: [
                        BoxShadow(
                            color: ColorData.seconderycolor.withOpacity(.4),
                            blurRadius: 5,
                            offset: Offset(0, 1))
                      ]),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MyApp.width,
                            height: MyApp.height * .2,
                            decoration: BoxDecoration(
                              color: ColorData.whitecolor,
                              borderRadius:
                                  BorderRadius.circular(MyApp.height * 0.009),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 5,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(MyApp.height * 0.009),
                                topRight: Radius.circular(MyApp.height * 0.009),
                              ),
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://plus.unsplash.com/premium_photo-1664302148512-ddea30cd2a92?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                height: MyApp.height * 0.2,
                                width: MyApp.width,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.all(Innerpadding.CardInnerpadding),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Textwithfont(
                                  text: 'Rose Gardenc',
                                  maxliness: 1,
                                  textoverflow: TextOverflow.ellipsis,
                                  fontSize: MyApp.height * 0.018,
                                  fontWeight: FontWeight.bold,
                                ),
                                SizedBox(height: MyApp.height * 0.005),
                                Textwithfont(
                                  text: 'Biryani, Paneer Tikka, Pizza...',
                                  fontSize: MyApp.height * 0.014,
                                  color: ColorData.shadecolor,
                                  maxliness: 1,
                                  textoverflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: MyApp.height * 0.01),
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: const Color(0xFFFFDD00),
                                        size: MyApp.height * 0.016),
                                    SizedBox(width: MyApp.width * 0.005),
                                    Textwithfont(
                                      text: '4.8',
                                      fontSize: MyApp.height * 0.014,
                                      fontWeight: FontWeight.bold,
                                      maxliness: 1,
                                      textoverflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                                SizedBox(height: MyApp.height * 0.01),
                                Row(
                                  children: [
                                    Icon(Icons.location_on,
                                        color: ColorData.greebuttoncolor,
                                        size: MyApp.height * 0.016),
                                    SizedBox(width: MyApp.width * 0.005),
                                    Flexible(
                                      child: Textwithfont(
                                        text: '212, Ring Road, Surat, Gujarat',
                                        fontSize: MyApp.height * 0.014,
                                        color: Colors.grey[600],
                                        maxliness: 1,
                                        textoverflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: MyApp.height * 0.005),
                                Row(
                                  children: [
                                    Textwithfont(
                                      text: '15 min',
                                      fontSize: MyApp.height * 0.014,
                                      color: ColorData.shadecolor,
                                    ),
                                    Textwithfont(
                                      text: ' | ',
                                      fontSize: MyApp.height * 0.014,
                                      color: ColorData.shadecolor,
                                    ),
                                    Textwithfont(
                                      text: '1.5km',
                                      fontSize: MyApp.height * 0.014,
                                      color: ColorData.shadecolor,
                                    ),
                                    Textwithfont(
                                      text: ' | ',
                                      fontSize: MyApp.height * 0.014,
                                      color: ColorData.shadecolor,
                                    ),
                                    Textwithfont(
                                      text: 'Free Delivery',
                                      fontSize: MyApp.height * 0.014,
                                      color: ColorData.greebuttoncolor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: MyApp.height * .02,
                        right: MyApp.width * .02,
                        child: CircleAvatar(
                          backgroundColor: ColorData.whitecolor,
                          radius:
                              ((MyApp.width * .008) * (MyApp.height * .007)),
                          child: Icon(
                            Icons.favorite_border,
                            color: ColorData.seconderycolor,
                            size:
                                ((MyApp.width * .009) * (MyApp.height * .009)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MyApp.height * .02,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterButton(String label, double height, double width,
      {bool isSelected = false, IconData? icon}) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.04,
      ),
      decoration: BoxDecoration(
        color: isSelected ? ColorData.maincolor : ColorData.whitecolor,
        borderRadius: BorderRadius.circular(Borderradius.buttonborderradius),
        border: Border.all(
          color: ColorData.maincolor,
        ),
      ),
      child: Row(
        children: [
          Textwithfont(
            text: label,
            color: isSelected ? ColorData.whitecolor : ColorData.maincolor,
            fontWeight: FontWeight.w600,
            fontSize: height * 0.016,
          ),
          if (icon != null) ...[
            SizedBox(width: width * 0.01),
            Icon(
              icon,
              color: isSelected ? ColorData.whitecolor : ColorData.maincolor,
              size: height * 0.02,
            ),
          ],
        ],
      ),
    );
  }
}
