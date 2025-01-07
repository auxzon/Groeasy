import 'package:flutter/material.dart';
import '../../../common/text/textdata.dart';
import '../../../common/utils/Color/Colordata.dart';
import '../../../common/utils/fontsize/fontsize.dart';

class Cartappbar extends StatelessWidget {
  Cartappbar({super.key,required this.title});

  String?title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: true,
      automaticallyImplyLeading: true,
      title: Textwithfont(
        text: title??"",
        color: ColorData.seconderycolor,
        fontWeight: FontWeight.bold,
        fontSize: Fontsize.Fontsizelargeex,
      ),
    );
  }
}
