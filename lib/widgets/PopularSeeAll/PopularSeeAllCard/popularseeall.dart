import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../common/text/textdata.dart';
import '../../../common/utils/BorderRadius/borderradius.dart';
import '../../../common/utils/Color/Colordata.dart';
import '../../../common/utils/Padding/cardinnerpadding.dart';
import '../../../main.dart';

class Popularseeall extends StatelessWidget {
Popularseeall({
    super.key,
    required this.image,
    required this.title,
    required this.category,
    required this.rating,
    required this.time,
    required this.deliverytype,
    required this.tapfun,
  });
  String image;
  String title;
  String category;
  double rating;
  String time;
  bool deliverytype;
  VoidCallback tapfun;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapfun,
      child: Container(
        decoration: BoxDecoration(
            color: ColorData.whitecolor,
            borderRadius:
                BorderRadius.circular(Borderradius.containerborderradius),
            boxShadow: [
              BoxShadow(
                  color: ColorData.seconderycolor.withOpacity(.4),
                  blurRadius: 5,
                  offset: Offset(0, 1))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MyApp.height * .2,
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
                      imageUrl: image,
                      height: MyApp.height * 0.2,
                      width: MyApp.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: MyApp.height * .02,
                  right: MyApp.width * .02,
                  child: const CircleAvatar(
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
            Padding(
              padding: EdgeInsets.all(Innerpadding.CardInnerpadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Textwithfont(
                    text: title,
                    maxliness: 1,
                    textoverflow: TextOverflow.ellipsis,
                    fontSize: MyApp.height * 0.018,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: MyApp.height * 0.005),
                  Textwithfont(
                    text: category,
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
                        text: '$rating',
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
                      Textwithfont(
                        text: '$time',
                        fontSize: MyApp.height * 0.014,
                        color: ColorData.shadecolor,
                      ),
                      Textwithfont(
                        text: deliverytype?' | ':"",
                        fontSize: MyApp.height * 0.014,
                        color: ColorData.shadecolor,
                      ),
                      Textwithfont(
                        text: deliverytype?'Free Delivery':"",
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
      ),
    );
  }
}
