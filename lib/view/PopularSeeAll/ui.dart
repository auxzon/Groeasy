import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../common/Navigation/navigation.dart';
import '../../common/text/textdata.dart';
import '../../common/utils/BorderRadius/borderradius.dart';
import '../../common/utils/Color/Colordata.dart';
import '../../common/utils/Padding/cardinnerpadding.dart';
import '../../common/utils/fontsize/fontsize.dart';
import '../../controller/Bottmnavigation/BottomNavgationBarController.dart';
import '../../main.dart';
import '../BottomSheet/BottomSheet.dart';
import '../ProducDetailsScreen/ui.dart';

class PopularSeeAll extends StatelessWidget {
  PopularSeeAll({super.key, this.title, this.index});

  String? title;
  int? index;

  @override
  Widget build(BuildContext context) {
    return Commonscaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.delete<BottomNavigationBarController>();
            Navi.to(BottomNavigator(index: index??0),
                transition: Transition.leftToRightWithFade);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        title: Textwithfont(
          text: title??"Popular Groceries",
          fontSize: Fontsize.Fontsizelargeex,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal:  (MyApp.height * .006) *
            (MyApp.height * .006)),
        children: [
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
                _buildFilterButton('Lunch', MyApp.height, MyApp.width, icon: Icons.arrow_drop_down),
                SizedBox(width: MyApp.width * 0.02),
                _buildFilterButton('Nearest', MyApp.height, MyApp.width, isSelected: true),
                SizedBox(width:MyApp. width * 0.02),
                _buildFilterButton('Great Offers', MyApp.height, MyApp.width, isSelected: true),
                SizedBox(width: MyApp.width * 0.02),
                _buildFilterButton('Ratings 4+', MyApp.height, MyApp.width, icon: Icons.arrow_drop_down),
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
              childAspectRatio: 0.65,
            ),
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navi.to(ProductDetalsScreen());
              },
              child: Container(
                width: MyApp.width,
                height: MyApp.height*.4,
                decoration: BoxDecoration(
                    color: ColorData.whitecolor,
                    borderRadius: BorderRadius.circular(Borderradius.containerborderradius),
                    boxShadow: [
                      BoxShadow(color: ColorData.seconderycolor.withOpacity(.4),blurRadius: 5,offset: Offset(0, 1))
                    ]
                ),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MyApp.width,
                          height: MyApp.height*.2,
                          decoration: BoxDecoration(
                            color: ColorData.whitecolor,
                            borderRadius: BorderRadius.circular(MyApp.height * 0.009),
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
                          padding: EdgeInsets.all(Innerpadding.CardInnerpadding),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Textwithfont(
                                text: 'Fruits and Vegetables Mix',
                                maxliness: 1,
                                textoverflow: TextOverflow.ellipsis,
                                fontSize: MyApp.height * 0.018,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(height: MyApp.height * 0.005),
                              Textwithfont(
                                text: 'Apple, banana , Orange , Tomato ',
                                fontSize: MyApp.height * 0.014,
                                color: ColorData.shadecolor,
                                maxliness: 1,
                                textoverflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: MyApp.height * 0.01),
                              Row(
                                children: [
                                  Icon(Icons.star, color: const Color(0xFFFFDD00), size: MyApp.height * 0.016),
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
                                  Icon(Icons.location_on, color: ColorData.greebuttoncolor, size: MyApp.height * 0.016),
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
                                    color:ColorData.shadecolor,
                                  ),
                                  Textwithfont(
                                    text: '1.5km',
                                    fontSize: MyApp.height * 0.014,
                                    color:ColorData.shadecolor,
                                  ),
                                  Textwithfont(
                                    text: ' | ',
                                    fontSize: MyApp.height * 0.014,
                                    color:ColorData.shadecolor,
                                  ),
                                  Textwithfont(
                                    text: 'Free Delivery',
                                    fontSize: MyApp.height * 0.014,
                                    color:ColorData.greebuttoncolor,
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
                      top: MyApp.height*.02,
                      right: MyApp.width*.02,
                      child: CircleAvatar(
                        backgroundColor: ColorData.whitecolor,
                        radius: kDefaultFontSize,
                        child: Icon(
                          Icons.favorite_border,
                          size: kDefaultFontSize,
                          color: ColorData.seconderycolor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildFilterButton(String label, double height, double width,
      {bool isSelected = false, IconData? icon}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04,),
      decoration: BoxDecoration(
        color: isSelected ? ColorData.maincolor: ColorData.whitecolor,
        borderRadius: BorderRadius.circular(Borderradius.buttonborderradius),
        border: Border.all(color: ColorData.maincolor,),
      ),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              color: isSelected ? ColorData.whitecolor : ColorData.maincolor,
              fontWeight: FontWeight.w600,
              fontSize: height * 0.016,
            ),
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
