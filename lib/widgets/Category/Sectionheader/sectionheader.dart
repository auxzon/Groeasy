import 'package:flutter/material.dart';
import '../../../common/text/textdata.dart';
import '../../../common/utils/fontsize/fontsize.dart';

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Textwithfont(
        text: title,
        fontSize: Fontsize.Fontsizelarge,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}