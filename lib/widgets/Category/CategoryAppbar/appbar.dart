import 'package:flutter/material.dart';

import '../../../common/text/textdata.dart';
import '../../../common/utils/fontsize/fontsize.dart';

class CatAppbar extends StatelessWidget {
CatAppbar({super.key,required this.title});

  String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      forceMaterialTransparency: true,
      title: Textwithfont(
        text: title,
        fontSize: Fontsize.Fontsizelargeex,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
