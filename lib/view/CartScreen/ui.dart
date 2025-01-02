import 'package:auxzonfoodapp/common/Navigation/navigation.dart';
import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:auxzonfoodapp/common/elevted_button/ElevatedButton.dart';
import 'package:auxzonfoodapp/common/text/textdata.dart';
import 'package:auxzonfoodapp/common/utils/Color/Colordata.dart';
import 'package:auxzonfoodapp/common/utils/fontsize/fontsize.dart';
import 'package:auxzonfoodapp/main.dart';
import 'package:auxzonfoodapp/view/AddressScreen/ui.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Commonscaffold(
      canPop: false,
      useSafeArea: true,
      appBar: AppBar(
       forceMaterialTransparency: true,
        automaticallyImplyLeading: true,
        title: Text(
          "Cart",
          style: TextStyle(
            color: ColorData.seconderycolor,
            fontWeight: FontWeight.bold,
            fontSize: Fontsize.Fontsizelargeex,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: MyApp.width * 0.04),
            child: Center(
              child: Text(
                "Done",
                style: TextStyle(
                  color: ColorData.greebuttoncolor,
                  fontWeight: FontWeight.bold,
                  fontSize: MyApp.height * 0.02,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: MyApp.width * 0.04),
              physics: const BouncingScrollPhysics(),
              itemCount: 15,
              itemBuilder: (context, index) {
                return CartItemCard(
                  height: MyApp.height,
                  width: MyApp.width,
                  title:"Pepperoni",
                  subtitle: "500 g | 1563 kcal",
                  description: "+1x pepperoni slices; +2x jalapeno",
                  price:"Rs. 150",
                  imageUrl:"https://images.unsplash.com/photo-1598679253544-2c97992403ea?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  quantity:2,
                );
              },
            ),
          ),
          Padding(
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
                      text: "Rs. 830",
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
                  onPressed: () {
                      Navi.to(ChooseAddressScreen(index: 1,));
                  },
                  child: Textwithfont(
                    text: "Go to checkout",
                      fontSize: MyApp.height * 0.02,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                ),
              ],
            ),
          ),
          SizedBox(height: MyApp.height * 0.02),
        ],
      ),
    );
  }
}

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
    return Stack(
      children: [
        Padding(
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
        ),
        Align(
          alignment: Alignment.topRight,
          child: GestureDetector(
            onTap: () {},
            child: Icon(Icons.delete, color: ColorData.maincolor, size: height * 0.03),
          ),
        ),
      ],
    );
  }
}
