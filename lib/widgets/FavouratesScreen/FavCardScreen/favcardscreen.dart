import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../common/text/textdata.dart';
import '../../../common/utils/BorderRadius/borderradius.dart';
import '../../../common/utils/Color/Colordata.dart';
import '../../../common/utils/fontsize/fontsize.dart';
import '../../../main.dart';

class Favcardscreen extends StatelessWidget {
Favcardscreen({
    super.key,
    required this.img,
    required this.title,
    required this.category,
    required this.amt,
    required this.qty,
    required this.detailstap,
    required this.favtap,
  });

  String img;
  String title;
  String category;
  String amt;
  double qty;
  VoidCallback detailstap;
  VoidCallback favtap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: detailstap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(Borderradius.containerborderradius),
            color: ColorData.whitecolor,
            boxShadow: const [
              BoxShadow(
                  color: ColorData.shadecolor,
                  offset: Offset(0, 1),
                  blurRadius: 2)
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                      imageUrl:img,
                      width: MyApp.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    top: MyApp.height * .01,
                    right: MyApp.width * .02,
                    child: GestureDetector(
                      onTap: favtap,
                      child: const CircleAvatar(
                        maxRadius: kDefaultFontSize,
                        backgroundColor: ColorData.whitecolor,
                        child: Icon(
                          Icons.favorite,
                          color: ColorData.maincolor,
                        ),
                      ),
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MyApp.width * .04, vertical: MyApp.height * .005),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Textwithfont(
                    text: title,
                    fontWeight: FontWeight.bold,
                    fontSize: Fontsize.Fontsizemedium,
                    maxliness: 1,
                    textoverflow: TextOverflow.ellipsis,
                  ),
                  Textwithfont(
                    text: category,
                    fontWeight: FontWeight.bold,
                    fontSize: Fontsize.Fontsizemedium,
                    color: ColorData.shadecolor,
                    maxliness: 1,
                    textoverflow: TextOverflow.ellipsis,
                  ),
                  Textwithfont(
                    text: "$qty kg",
                    fontWeight: FontWeight.bold,
                    fontSize: Fontsize.Fontsizemedium,
                    color: ColorData.seconderycolor,
                    maxliness: 1,
                    textoverflow: TextOverflow.ellipsis,
                  ),
                  Textwithfont(
                    text: "Rs. $amt",
                    fontWeight: FontWeight.bold,
                    fontSize: Fontsize.Fontsizemedium,
                    color: ColorData.shadecolor,
                    maxliness: 1,
                    textoverflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: MyApp.height * .009,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
