import 'package:flutter/material.dart';
import '../../../common/elevted_button/ElevatedButton.dart';
import '../../../common/text/textdata.dart';
import '../../../common/utils/Color/Colordata.dart';
import '../../../common/utils/fontsize/fontsize.dart';
import '../../../main.dart';

class Cartpricepart extends StatelessWidget {
  Cartpricepart({super.key, required this.price, required this.function});
double ?price;
VoidCallback?function;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MyApp.width * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Textwithfont(
                text: "Total price",
                fontSize: MyApp.height * 0.02,
                fontWeight: FontWeight.bold,
              ),
              Textwithfont(
                text: "Rs. $price",
                fontSize: MyApp.height * 0.02,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          SizedBox(height: MyApp.height * 0.02),
          CommonMaterialButton(
            color: ColorData.maincolor,
            padding: EdgeInsets.symmetric(vertical: MyApp.height * 0.015),
            borderRadius: BorderRadius.circular(MyApp.height * 0.015),
            onPressed:function,
            child: Textwithfont(
              text: "Go to checkout",
              fontSize: Fontsize.Fontsizemedium,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
