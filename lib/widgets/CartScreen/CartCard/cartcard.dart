import 'package:auxzonfoodapp/main.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../common/text/textdata.dart';

class CartItemCard extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final String subtitle;
  final String description;
  final String price;
  final String imageUrl;
  final int quantity;

  const CartItemCard({
    super.key,
    required this.height,
    required this.width,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
          vertical: MyApp.height*.01
      ),
      child: Container(
        padding: EdgeInsets.all(width * 0.03),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(height * 0.02),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(height * 0.01),
              child: CachedNetworkImage(
                height: height * 0.1,
                width: height * 0.1,
                fit: BoxFit.cover, imageUrl: imageUrl,
              ),
            ),
            SizedBox(width: width * 0.03),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Textwithfont(
                    text: title,
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: height * 0.005),
                  Textwithfont(
                    text: subtitle,
                    fontSize: height * 0.016,
                    color: Colors.grey,
                  ),
                  SizedBox(height: height * 0.005),
                  Textwithfont(
                    text: description,
                    fontSize: height * 0.015,
                    color: Colors.grey.shade600,
                    maxliness: 1,
                    textoverflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: height * 0.01),
                  Textwithfont(
                    text: price,
                    fontSize: height * 0.018,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.remove_circle_outline, size: height * 0.03),
                    ),
                    SizedBox(width: width * 0.02),
                    Textwithfont(
                      text: "$quantity",
                      fontSize: height * 0.02,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(width: width * 0.02),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.add_circle_outline, size: height * 0.03),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}