import 'package:flutter/material.dart';

import '../../../common/utils/Color/Colordata.dart';

class Categorysearchbar extends StatelessWidget {
Categorysearchbar({super.key,required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: title,
          prefixIcon: const Icon(Icons.search, color: ColorData.seconderycolor),
          filled: true,
          fillColor: const Color(0xFFFFFFFF),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Color(0xFFA8A8A8),
              width: 1,
            ),
          ),
          contentPadding:
          const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        ),
      ),
    );
  }
}
