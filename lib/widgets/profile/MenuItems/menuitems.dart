import 'package:flutter/material.dart';
import '../../../common/utils/Color/Colordata.dart';
import '../../../common/text/textdata.dart';

class Menuitems extends StatelessWidget {
  Menuitems({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  IconData icon;
  String title;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: ColorData.maincolor),
      title: Textwithfont(text: title),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
