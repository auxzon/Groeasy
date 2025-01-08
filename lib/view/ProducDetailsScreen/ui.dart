import 'package:auxzonfoodapp/common/Navigation/navigation.dart';
import 'package:auxzonfoodapp/common/common_textfield/common_textfield.dart';
import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:auxzonfoodapp/common/elevted_button/ElevatedButton.dart';
import 'package:auxzonfoodapp/common/text/textdata.dart';
import 'package:auxzonfoodapp/common/utils/BorderRadius/borderradius.dart';
import 'package:auxzonfoodapp/common/utils/Color/Colordata.dart';
import 'package:auxzonfoodapp/common/utils/fontsize/fontsize.dart';
import 'package:auxzonfoodapp/controller/Bottmnavigation/BottomNavgationBarController.dart';
import 'package:auxzonfoodapp/controller/ProductDetails/productdetailscontroller.dart';
import 'package:auxzonfoodapp/main.dart';
import 'package:auxzonfoodapp/view/BottomSheet/BottomSheet.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:get/get.dart';

import '../AddressScreen/ui.dart';

class ProductDetalsScreen extends StatelessWidget {
  const ProductDetalsScreen({super.key, required this.image, required this.text,required this.toscreen});

  final String image;
  final String text;
  final Widget toscreen;

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProductDetailsController());
    return Commonscaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: MyApp.height * .25,
            width: MyApp.width,
            child: Stack(
              children: [
                Container(
                  height: MyApp.height * .25,
                  width: MyApp.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: CachedNetworkImageProvider(image))),
                ),
                Positioned(
                  top: MyApp.height * .02,
                  left: 0,
                  right: 0,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: ColorData.whitecolor,
                        child: IconButton(
                          icon:
                              const Icon(Icons.arrow_back, color: Colors.black),
                          onPressed: () {
                            Navi.to(toscreen,
                            // Navi.to(BottomNavigator(index: 3),
                                transition: Transition.leftToRightWithFade);
                          },
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: ColorData.whitecolor,
                        child: IconButton(
                          icon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: MyApp.width * .02,
                      ),
                      CircleAvatar(
                        backgroundColor: ColorData.whitecolor,
                        child: IconButton(
                          icon: Icon(Icons.share, color: Colors.black),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Textwithfont(
                      text: text,
                      fontSize: Fontsize.Fontsizelargeex,
                      fontWeight: FontWeight.bold,
                    ),
                    const Textwithfont(
                      text: "Rs 50.00",
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ],
                ),
                SizedBox(height: MyApp.height * .002),
                Textwithfont(
                  text: "Fruit",
                  color: ColorData.shadecolor,
                  fontSize: Fontsize.Fontsizemedium,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: MyApp.height * .02),
                Container(
                  height: MyApp.height * .08,
                  width: MyApp.width,
                  padding: EdgeInsets.symmetric(horizontal: MyApp.width * .02),
                  decoration: BoxDecoration(
                    color: ColorData.shadecolor.withOpacity(.2),
                    borderRadius: BorderRadius.circular(
                        (MyApp.width * .007) * (MyApp.width * .007)),
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Textwithfont(
                                text: "4.8", fontWeight: FontWeight.bold),
                            Textwithfont(text: "Ratings"),
                          ],
                        ),
                        Spacer(),
                        VerticalDivider(),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Textwithfont(
                                text: "1K+", fontWeight: FontWeight.bold),
                            Textwithfont(text: "Reviews"),
                          ],
                        ),
                        Spacer(),
                        VerticalDivider(),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Textwithfont(
                                text: "15 min", fontWeight: FontWeight.bold),
                            Textwithfont(text: "Delivery"),
                          ],
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MyApp.height * .01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Textwithfont(
                      text: "Description",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          enableDrag: true,
                          backgroundColor: ColorData.whitecolor,
                          context: context,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                          ),
                          isScrollControlled: true,
                          builder: (context) {
                            return GestureDetector(
                              onTap: () => FocusScope.of(context).unfocus(),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context).viewInsets.bottom,
                                  ),
                                  child: Container(
                                    height: MyApp.height * .5,
                                    width: MyApp.width,
                                    padding: EdgeInsets.symmetric(vertical: MyApp.height * .02),
                                    decoration: BoxDecoration(
                                      color: ColorData.shadecolor.withOpacity(.2),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(
                                            (MyApp.height * .006) * (MyApp.height * .006),
                                          ),
                                          child: const CommonTextField(
                                            maxLines: 5,
                                            hintText: "enter your reviews..",
                                            keyboardType: TextInputType.text,
                                            textCapitalization: TextCapitalization.sentences,
                                          ),
                                        ),
                                        Obx(() => RatingStars(
                                          value: controller.rateval.value,
                                          maxValue: 5,
                                          starOffColor: ColorData.shadecolor,
                                          starSize: (MyApp.height * .007) *
                                              (MyApp.height * .007),
                                          onValueChanged: (value) {
                                            controller.rateval.value = value.toDouble();
                                          },
                                        )),
                                        Padding(
                                          padding: EdgeInsets.all(
                                            (MyApp.height * .006) * (MyApp.height * .006),
                                          ),
                                          child: CommonMaterialButton(
                                            width: MyApp.width,
                                            onPressed: () {
                                              Navi.back();
                                            },
                                            color: ColorData.maincolor,
                                            child: Textwithfont(
                                              text: "Submit",
                                              fontWeight: FontWeight.bold,
                                              fontSize: Fontsize.Fontsizemedium,
                                              color: ColorData.whitecolor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Textwithfont(
                            text: "Add Review",
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          Icon(Icons.arrow_right),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MyApp.height * .01),
                const Textwithfont(
                    text:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever.",
                    color: Colors.grey),
                SizedBox(height: MyApp.height * .02),
                const Textwithfont(
                  text: "Reviews",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: MyApp.height * .01),
                ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            child:
                                const Icon(Icons.person, color: Colors.black),
                          ),
                          title: const Textwithfont(text: "Jenifer Wilson"),
                          subtitle: const Textwithfont(
                              text: "Wow! Very Delicious Food.",
                              color: Colors.grey),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(5, (index) {
                              return const Icon(Icons.star,
                                  color: Colors.amber, size: 16);
                            }),
                          ),
                        ),
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: 5),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Expanded(
              child: CommonMaterialButton(
                borderRadius:
                    BorderRadius.circular(Borderradius.buttonborderradius),
                color: ColorData.shadecolor,
                onPressed: () {
                  Get.delete<BottomNavigationBarController>();
                  Get.to(BottomNavigator(index: 1));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      CupertinoIcons.cart,
                      color: ColorData.seconderycolor,
                    ),
                    Textwithfont(
                      text: "Add to Cart",
                      color: ColorData.seconderycolor,
                      fontWeight: FontWeight.bold,
                      fontSize: Fontsize.Fontsizemedium,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: MyApp.width * .04),
            Expanded(
              child: CommonMaterialButton(
                onPressed: () {
                  Navi.to(ChooseAddressScreen(
                    screen: ProductDetalsScreen(image: image,text: text,toscreen: toscreen,),
                  ));
                },
                borderRadius:
                    BorderRadius.circular(Borderradius.buttonborderradius),
                color: ColorData.maincolor,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.shopping_bag_rounded,
                      color: ColorData.whitecolor,
                    ),
                    Textwithfont(
                      text: "Order Now",
                      color: ColorData.whitecolor,
                      fontSize: Fontsize.Fontsizemedium,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
