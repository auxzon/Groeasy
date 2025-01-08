import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../common/text/textdata.dart';
import '../../../common/utils/BorderRadius/borderradius.dart';
import '../../../common/utils/Color/Colordata.dart';
import '../../../main.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final VoidCallback tapfun;

  const CategoryCard(
      {required this.title,
      required this.imageUrl,
      required this.tapfun,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapfun,
      child: Container(
        width: MyApp.width * .4,
        height: MyApp.height * .22,
        decoration: BoxDecoration(
            color: ColorData.whitecolor,
            boxShadow: [
              BoxShadow(
                  color: ColorData.shadecolor,
                  blurRadius: 2,
                  offset: Offset(1, 0))
            ],
            borderRadius:
                BorderRadius.circular(Borderradius.containerborderradius)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(Borderradius.containerborderradius)),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                width: double.infinity,
                height: MyApp.height * 0.12,
                fit: BoxFit.cover,
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => Container(
                  color: Colors.grey[300],
                  child: const Icon(
                    Icons.broken_image,
                    size: 50,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Textwithfont(
                textoverflow: TextOverflow.ellipsis,
                maxliness: 1,
                text: title,
                textAlign: TextAlign.center,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
