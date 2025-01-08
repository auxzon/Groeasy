import 'package:flutter/material.dart';
import '../../../common/text/textdata.dart';
import '../../../common/utils/fontsize/fontsize.dart';
import '../../../main.dart';

class Sectionheader extends StatelessWidget {
Sectionheader({super.key,required this.title,});

  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Color(0xFF1E1F22),
          borderRadius: BorderRadius.circular(
              (MyApp.width * .007) * (MyApp.width * .007))),
      child: Textwithfont(
        text: title,
        color: Colors.white,
        fontSize: Fontsize.Fontsizelarge,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
