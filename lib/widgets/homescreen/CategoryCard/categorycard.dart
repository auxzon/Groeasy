import 'package:auxzonfoodapp/main.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../common/text/textdata.dart';
import '../../../common/utils/BorderRadius/borderradius.dart';
import '../../../common/utils/Color/Colordata.dart';

class HMCategorycard extends StatelessWidget {
   HMCategorycard({
    super.key,
    required this.tapfunction,
    required this.image,
    required this.text,
  });

  VoidCallback tapfunction;
  String image;
  String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapfunction,
      child: Padding(
        padding: EdgeInsets.only(
            right: (MyApp.height * .006) * (MyApp.width * .006)),
        child: Container(
          height: MyApp.height * .13,
          width: MyApp.height * .13,
          padding: EdgeInsets.symmetric(
              vertical: MyApp.height * .01, horizontal: MyApp.width * .009),
          decoration: BoxDecoration(
              // color: Colors.green,
              borderRadius:
                  BorderRadius.circular(Borderradius.containerborderradius),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(image))),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Textwithfont(
              textAlign: TextAlign.center,
              text: text,
              fontWeight: FontWeight.bold,
              color: ColorData.whitecolor,
              maxliness: 2,
              textoverflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
