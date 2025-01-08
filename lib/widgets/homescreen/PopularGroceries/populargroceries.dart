import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../common/text/textdata.dart';
import '../../../common/utils/BorderRadius/borderradius.dart';
import '../../../common/utils/Color/Colordata.dart';
import '../../../main.dart';

class Populargroceries extends StatelessWidget {
Populargroceries({
    super.key,
    required this.ontap,
    required this.title,
    required this.price,
    required this.pricecut,
    required this.priceoff,
    required this.img,
  });
VoidCallback ontap;
String title;
double price;
double pricecut;
double priceoff;
String img;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child: Container(
        decoration: BoxDecoration(
          color: ColorData.whitecolor,
          borderRadius:
              BorderRadius.circular(Borderradius.containerborderradius),
          boxShadow: [
            BoxShadow(
              color: ColorData.seconderycolor.withOpacity(.4),
              blurRadius: 5,
              offset: const Offset(0, 1),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Section
            Stack(
              children: [
                Container(
                  height: MyApp.height * .15,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MyApp.height * 0.009),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(MyApp.height * 0.009),
                    child: CachedNetworkImage(
                      imageUrl: img,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: MyApp.height*.01,
                  right: MyApp.width*.02,
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
              padding: EdgeInsets.all(MyApp.width * 0.02),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Textwithfont(
                        text: 'Rs.$price',
                        fontSize: MyApp.height * 0.014,
                        color: ColorData.seconderycolor,
                        fontWeight: FontWeight.bold,
                        textoverflow: TextOverflow.ellipsis,
                      ),
                      Textwithfont(
                        text: 'Rs.$pricecut',
                        fontSize: MyApp.height * 0.014,
                        color: ColorData.shadecolor,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ],
                  ),
                  SizedBox(height: MyApp.height * 0.005),
                  Textwithfont(
                    text: '$priceoff% off',
                    fontSize: MyApp.height * 0.014,
                    color: ColorData.cancelbuttoncolor.withOpacity(.8),
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
