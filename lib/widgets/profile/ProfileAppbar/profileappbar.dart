import 'package:flutter/material.dart';
import '../../../common/text/textdata.dart';
import '../../../common/utils/fontsize/fontsize.dart';

class Profileappbar extends StatelessWidget {
Profileappbar({
    super.key,
    required this.title,
    required this.actionicon,
    required this.actionfun,
  });

  String title;
  IconData actionicon;
  VoidCallback actionfun;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: true,
      automaticallyImplyLeading: false,
      title: Textwithfont(
        text: title,
        fontWeight: FontWeight.bold,
        fontSize: Fontsize.Fontsizelargeex,
      ),
      actions: [
        IconButton(
          icon: Icon(actionicon),
          onPressed: actionfun
        ),
      ],
    );
  }
}
