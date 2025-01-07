import 'package:auxzonfoodapp/common/text/textdata.dart';
import 'package:flutter/material.dart';
import '../../../common/utils/Color/Colordata.dart';
import '../../../common/utils/fontsize/fontsize.dart';

class Subtitleheading extends StatelessWidget {
  Subtitleheading({
    super.key,
    required this.title,
    this.seeall,
    this.seeallfun,
  });

  String title;
  String? seeall;
  VoidCallback? seeallfun;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Textwithfont(
          text: title,
          fontWeight: FontWeight.bold,
          fontSize: Fontsize.Fontsizelarge,
        ),
        seeall==null
            ?const Spacer()
            :GestureDetector(
          onTap:seeallfun,
          child: Textwithfont(
            text: seeall??"",
            fontWeight: FontWeight.bold,
            fontSize: Fontsize.Fontsizemedium,
            color: ColorData.maincolor,
          ),
        ),
      ],
    );
  }
}
